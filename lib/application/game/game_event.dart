part of 'game_bloc.dart';

@freezed
abstract class GameEvent with _$GameEvent {
  const factory GameEvent.moveRequested(Move move) = MoveRequested;
  const factory GameEvent.selectRequested(Coordinates coordinates) =
      SelectRequested;
  const factory GameEvent.restartRequested() = RestartRequested;
  const factory GameEvent.gameChangeRequested(Game newGame) = GameChangeRequested;
}
