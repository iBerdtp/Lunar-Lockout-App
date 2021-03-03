import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
  Game _game;

  GameBloc() : super(const GameState.noGame());

  @override
  Stream<GameState> mapEventToState(
    GameEvent event,
  ) async* {
    state.when(
      gameOn: (b, c, f) => event.when(
        moveRequested: _requestMove,
        selectRequested: _requestSelect,
        restartRequested: _requestRestart,
        gameChangeRequested: _requestGameChange,
      ),
      gameOver: (b) => event.when(
        moveRequested: null,
        selectRequested: null,
        restartRequested: _requestRestart,
        gameChangeRequested: _requestGameChange,
      ),
      noGame: () => event.when(
        moveRequested: null,
        selectRequested: null,
        restartRequested: null,
        gameChangeRequested: _requestGameChange,
      ),
    );
    yield _getStateFromGame(_game);
  }

  void _requestMove(Move move) {
    _game.moveSelected(move);
  }

  void _requestSelect(Coordinates c) {
    _game.selected = some(c);
  }

  void _requestRestart() {
    _game.restart();
  }

  // ignore: use_setters_to_change_properties
  void _requestGameChange(Game g) {
    _game = g;
  }

  static GameState _getStateFromGame(Game game) {
    if (game.isWin()) {
      return GameState.gameOver(
        board: game.currentBoard,
      );
    } else {
      return GameState.gameOn(
        board: game.currentBoard,
        selected: game.selected,
        moveFailure: game.moveFailure,
      );
    }
  }
}
