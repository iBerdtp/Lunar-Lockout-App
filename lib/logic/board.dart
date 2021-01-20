import 'dart:convert';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:lunar_lockout/logic/util.dart';

class Board {
  final int dim;
  final List<List<int>> initialBoard;
  List<List<int>> currentBoard;
  List<Coordinates> goals;
  Coordinates selected;

  static List<List<int>> generateEmpty(int dim) =>
      List.filled(dim, List.filled(dim, empty));

  /// Performed moves
  List<Move> moves;

  /// Coordinates that held the pieces that were moved
  List<Coordinates> moveds;

  int get depth => moves.length;

  Board._({this.dim, this.initialBoard, this.goals});

  factory Board.empty({int dim = 5}) {
    var initialBoard = generateEmpty(dim);
    var goals = [Coordinates(dim ~/ 2, dim ~/ 2)];
    Board empty = Board._(dim: dim, initialBoard: initialBoard, goals: goals);
    empty.restart();
    return empty;
  }

  static Future<Board> fromPuz({@required String fileName}) async {
    String fromPuzString = await rootBundle.loadString("puzzles/fileName.puz");
    List<String> contents = LineSplitter().convert(fromPuzString);
    var dim = int.parse(contents[0]);
    var initialBoard = List.generate(
        dim, (y) => List.generate(dim, (x) => int.parse(contents[y + 1][x])));
    var goals = List.empty();
    for (int i = dim + 1; i < contents.length; i++) {
      List<int> split = contents[i].split(" ").map(int.parse);
      goals.add(Coordinates(split[0], split[1]));
    }
    Board board = Board._(dim: dim, initialBoard: initialBoard, goals: goals);
    board.restart();
    return board;
  }

  // Board.copy(Board original)
  //     : this(
  //           dim: original.dim,
  //           initialBoard: deepCopy(original.initialBoard),
  //           goals: original.goals);

  /// Moves selected piece in direction [m]
  void moveSelected(final Move m) {
    if (selected != null) {
      print("moving piece at $selected $m");
      move(selected, m);
    } else
      print("No piece selected");
  }

  /// Moves the piece at [c] in direction [m]
  void move(final Coordinates c, final Move m) {
    Coordinates newCoordinates = _getNewCoordinates(c, m);
    if (newCoordinates == null) return;
    moves.add(m);
    moveds.add(c);
    _movePieceTo(c, newCoordinates);
    selected = newCoordinates;
  }

  /// Returns the [Coordinates] of the field that the piece in [c] would end up
  /// when moving in direction [m]. Returns null for illegal moves.
  Coordinates _getNewCoordinates(final Coordinates c, final Move m) {
    assert(currentBoard[c.x][c.y] != empty, "No piece at (${c.x}, ${c.y})");
    Coordinates copy = c.add(m);
    while (_boundariesRespected(copy)) {
      if (currentBoard[copy.x][copy.y] != empty) return copy.sub(m);
      copy = copy.add(m);
    }
    return null;
  }

  /// Actually moves a piece from [currentPos] to [newPos], without taking into account whether this is a legal move
  void _movePieceTo(final Coordinates currentPos, final Coordinates newPos) {
    assert(getAt(newPos) == empty, "Can't move piece to non-empty field");
    assert(getAt(currentPos) != empty, "Can't move piece from empty field");
    setAt(newPos, getAt(currentPos));
    setAt(currentPos, 0);
  }

  void restart() {
    this.currentBoard = deepCopy(initialBoard);
    this.selected = getFirstPiece(initialBoard);
    this.moves = List<Move>();
    this.moveds = List<Coordinates>();
  }

  bool isWin() {
    for (var goal in goals) if (getAt(goal) != shuttle) return false;
    return true;
  }

  bool isGoal(Coordinates c) {
    return goals.contains(c);
  }

  bool _boundariesRespected(Coordinates c) {
    return c.x < dim && c.x >= 0 && c.y < dim && c.y >= 0;
  }

  int getAt(Coordinates c) {
    return currentBoard[c.x][c.y];
  }

  void setAt(Coordinates c, int piece) {
    currentBoard[c.x][c.y] = piece;
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is Board &&
        deepEquals(o.currentBoard, currentBoard).pr("board") &&
        listEquals(o.goals, goals).pr("goals");
  }

  @override
  int get hashCode {
    return dim.hashCode ^
        initialBoard.hashCode ^
        currentBoard.hashCode ^
        goals.hashCode ^
        moves.hashCode ^
        moveds.hashCode;
  }
}

class Coordinates {
  final int x;
  final int y;

  const Coordinates(this.x, this.y);

  Coordinates.copy(Coordinates original) : this(original.x, original.y);

  Coordinates add(Move m) {
    return Coordinates(x + m.dX, y + m.dY);
  }

  Coordinates sub(Move m) {
    return Coordinates(x - m.dX, y - m.dY);
  }

  @override
  bool operator ==(Object o) {
    return identical(this, o) || o is Coordinates && o.x == x && o.y == y;
  }

  @override
  int get hashCode => pow(2, x).toInt() * pow(2, y).toInt();

  @override
  String toString() => 'Coordinates(x: $x, y: $y)';
}

class Move {
  final int dX;
  final int dY;
  final String _name;

  static final Move up = Move._(0, -1, "up");
  static final Move left = Move._(-1, 0, "left");
  static final Move down = Move._(0, 1, "down");
  static final Move right = Move._(1, 0, "right");

  Move._(this.dX, this.dY, this._name);

  @override
  String toString() => _name;
}
