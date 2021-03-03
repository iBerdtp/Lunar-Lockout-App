import 'package:dartz/dartz.dart';
import 'package:lunar_lockout/domain/game_logic/game.dart';
import 'package:lunar_lockout/domain/game_logic/move.dart';

class BFS {
  const BFS._();

  static const BFS instance = BFS._();

  Option<int> getDifficulty(Game game) {
    return _getSolution(game).flatMap((a) => some(a.length));
  }

  Option<List<Move>> _getSolution(Game game) {
    return none();
  }
}
