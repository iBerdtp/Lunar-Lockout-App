import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lunar_lockout/domain/core/errors.dart';
import 'package:lunar_lockout/domain/core/failures.dart';
import 'package:lunar_lockout/domain/game_logic/board.dart';
import 'package:lunar_lockout/domain/game_logic/coordinates.dart';
import 'package:lunar_lockout/domain/game_logic/game.dart';
import 'package:lunar_lockout/domain/game_logic/move.dart';

part 'game_event.dart';
part 'game_state.dart';

part 'game_bloc.freezed.dart';

@injectable
class GameBloc extends Bloc<GameEvent, GameState> {
  Option<Game> _gameOption;

  GameBloc() : super(const GameState.noGame()) {
    _gameOption = none();
  }

  @override
  Stream<GameState> mapEventToState(
    GameEvent event,
  ) async* {
    state.map(
      gameOn: (_) => event.when(
        moveRequested: _requestMove,
        selectRequested: _requestSelect,
        restartRequested: _requestRestart,
        gameChangeRequested: _requestGameChange,
      ),
      gameOver: (_) => event.when(
        moveRequested: (_) {},
        selectRequested: (_) {},
        restartRequested: _requestRestart,
        gameChangeRequested: _requestGameChange,
      ),
      noGame: (_) => event.when(
        moveRequested: (_) {},
        selectRequested: (_) {},
        restartRequested: () {},
        gameChangeRequested: _requestGameChange,
      ),
    );
    yield _getStateFromGame();
  }

  void _performOrCrash(void Function(Game) function) {
    _gameOption.fold(() => throw NoGameError(), function);
  }

  void _requestMove(Move move) {
    _performOrCrash((game) => game.moveSelected(move));
  }

  void _requestSelect(Coordinates c) {
    _performOrCrash((game) => game.selectedOption = some(c));
  }

  void _requestRestart() {
    _performOrCrash((game) => game.restart());
  }

  void _requestGameChange(Game g) {
    _gameOption = some(g);
  }

  GameState _getStateFromGame() {
    return _gameOption.fold(
      () => const GameState.noGame(),
      (game) {
        if (game.isWin()) {
          return GameState.gameOver(
            board: game.currentBoard,
          );
        } else {
          return GameState.gameOn(
            board: game.currentBoard,
            selectedOption: game.selectedOption,
            moveFailureOption: game.moveFailureOption,
          );
        }
      },
    );
  }
}
