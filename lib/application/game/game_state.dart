part of 'game_bloc.dart';

@freezed
abstract class GameState with _$GameState {
  const factory GameState.gameOn({
    @required Board board,
    @required Option<Coordinates> selectedOption,
    @required Option<MoveFailure> moveFailureOption,
  }) = GameOn;
  const factory GameState.gameOver({
    @required Board board,
  }) = GameOver;
  const factory GameState.noGame() = NoGame;
}
