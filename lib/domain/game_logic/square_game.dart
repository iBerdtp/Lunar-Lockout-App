import 'package:kt_dart/kt.dart';
import 'package:lunar_lockout/domain/game_logic/board.dart';
import 'package:lunar_lockout/domain/game_logic/game.dart';
import 'package:lunar_lockout/domain/game_logic/move.dart';

class SquareGame extends Game {
  SquareGame(Board initialBoard) : super(initialBoard);

  @override
  KtList<Move> get legalMoves => KtList.from([
        Move.up,
        Move.down,
        Move.left,
        Move.right,
      ]);
}
