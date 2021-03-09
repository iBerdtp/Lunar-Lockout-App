import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:lunar_lockout/domain/core/failures.dart';
import 'package:lunar_lockout/domain/game_logic/board.dart';
import 'package:lunar_lockout/domain/game_logic/coordinates.dart';
import 'package:lunar_lockout/domain/game_logic/move.dart';

abstract class Game {
  final Board _initialBoard;
  Board _currentBoard;
  Option<MoveFailure> _moveFailureOption;
  Option<Coordinates> selectedOption;

  Board get currentBoard => _currentBoard;
  Option<MoveFailure> get moveFailureOption => _moveFailureOption;

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
    selectedOption.fold(
      () => _moveFailureOption = some(const MoveFailure.noPieceSelected()),
      (c) => move(c, m),
    );
  }

  void move(Coordinates c, Move m) {
    final moveResult = simulateMove(c, m);
    moveResult.fold(
      (f) => _moveFailureOption = some(f),
      (tup) {
        _currentBoard = tup.value1;
        selectedOption = some(tup.value2);
        _moves.add(m);
        _moveds.add(c);
        _moveFailureOption = none();
      },
    );
  }

  Either<MoveFailure, Tuple2<Board, Coordinates>> simulateMove(
      Coordinates c, Move m) {
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
          final newPos = scout.sub(m);
          final newBoard = currentBoard.move(c, newPos);
          return right(Tuple2(newBoard, newPos));
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
    selectedOption = _initialBoard.getFirstPiece();
    _moveFailureOption = none();
    _moves = [];
    _moveds = [];
  }
}
