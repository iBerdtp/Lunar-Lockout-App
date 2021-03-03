import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:lunar_lockout/domain/core/failures.dart';
import 'package:lunar_lockout/domain/game_logic/board.dart';
import 'package:lunar_lockout/domain/game_logic/coordinates.dart';
import 'package:lunar_lockout/domain/game_logic/move.dart';

abstract class Game {
  final Board _initialBoard;
  Board _currentBoard;
  Option<MoveFailure> _moveFailure;
  Option<Coordinates> selected;

  Board get currentBoard => _currentBoard;
  Option<MoveFailure> get moveFailure => _moveFailure;

  List<Move> _moves;
  List<Coordinates> _moveds;
  int get depth => _moves.length;

  KtList<Move> get legalMoves;

  Game(this._initialBoard) {
    // TODO implement
    // validateBoard(_initialBoard);
    restart();
  }

  // Board validateBoard(Board board);

  void moveSelected(Move m) {
    selected.fold(
      () => _moveFailure = some(const MoveFailure.noPieceSelected()),
      (c) => move(c, m),
    );
  }

  void move(Coordinates c, Move m) {
    final moveResult = simulateMove(c, m);
    moveResult.fold(
      (f) => _moveFailure = some(f),
      (b) {
        _currentBoard = b;
        _moves.add(m);
        _moveds.add(c);
        _moveFailure = none();
      },
    );
  }

  Either<MoveFailure, Board> simulateMove(Coordinates c, Move m) {
    assert(legalMoves.contains(m));
    if (!currentBoard.pieces.containsKey(c)) {
      return left(MoveFailure.noPieceToMove(coordinates: c));
    } else if (currentBoard.pieces.containsKey(c.add(m))) {
      return left(MoveFailure.pieceCantMove(
        coordinates: c,
        move: m,
      ));
    } else {
      Coordinates scout = c.add(m);
      while (currentBoard.isWithinBounds(scout)) {
        if (currentBoard.pieces.containsKey(scout)) {
          final newBoard = currentBoard.move(c, scout.sub(m));
          return right(newBoard);
        }
        scout = scout.add(m);
      }
      return left(MoveFailure.pieceCantMove(
        coordinates: c,
        move: m,
      ));
    }
  }

  bool isWin() {
    for (final Coordinates c in currentBoard.goals.iter) {
      if (!currentBoard.pieces.containsKey(c)) {
        return false;
      }
    }
    return true;
  }

  void restart() {
    _currentBoard = _initialBoard;
    selected = _initialBoard.getFirstPiece();
  }
}
