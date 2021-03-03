// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GameEventTearOff {
  const _$GameEventTearOff();

// ignore: unused_element
  MoveRequested moveRequested(Move move) {
    return MoveRequested(
      move,
    );
  }

// ignore: unused_element
  SelectRequested selectRequested(Coordinates coordinates) {
    return SelectRequested(
      coordinates,
    );
  }

// ignore: unused_element
  RestartRequested restartRequested() {
    return const RestartRequested();
  }

// ignore: unused_element
  GameChangeRequested gameChangeRequested(Game newGame) {
    return GameChangeRequested(
      newGame,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GameEvent = _$GameEventTearOff();

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult moveRequested(Move move),
    @required TResult selectRequested(Coordinates coordinates),
    @required TResult restartRequested(),
    @required TResult gameChangeRequested(Game newGame),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult moveRequested(Move move),
    TResult selectRequested(Coordinates coordinates),
    TResult restartRequested(),
    TResult gameChangeRequested(Game newGame),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult moveRequested(MoveRequested value),
    @required TResult selectRequested(SelectRequested value),
    @required TResult restartRequested(RestartRequested value),
    @required TResult gameChangeRequested(GameChangeRequested value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult moveRequested(MoveRequested value),
    TResult selectRequested(SelectRequested value),
    TResult restartRequested(RestartRequested value),
    TResult gameChangeRequested(GameChangeRequested value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res> implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  final GameEvent _value;
  // ignore: unused_field
  final $Res Function(GameEvent) _then;
}

/// @nodoc
abstract class $MoveRequestedCopyWith<$Res> {
  factory $MoveRequestedCopyWith(
          MoveRequested value, $Res Function(MoveRequested) then) =
      _$MoveRequestedCopyWithImpl<$Res>;
  $Res call({Move move});
}

/// @nodoc
class _$MoveRequestedCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements $MoveRequestedCopyWith<$Res> {
  _$MoveRequestedCopyWithImpl(
      MoveRequested _value, $Res Function(MoveRequested) _then)
      : super(_value, (v) => _then(v as MoveRequested));

  @override
  MoveRequested get _value => super._value as MoveRequested;

  @override
  $Res call({
    Object move = freezed,
  }) {
    return _then(MoveRequested(
      move == freezed ? _value.move : move as Move,
    ));
  }
}

/// @nodoc
class _$MoveRequested implements MoveRequested {
  const _$MoveRequested(this.move) : assert(move != null);

  @override
  final Move move;

  @override
  String toString() {
    return 'GameEvent.moveRequested(move: $move)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MoveRequested &&
            (identical(other.move, move) ||
                const DeepCollectionEquality().equals(other.move, move)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(move);

  @JsonKey(ignore: true)
  @override
  $MoveRequestedCopyWith<MoveRequested> get copyWith =>
      _$MoveRequestedCopyWithImpl<MoveRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult moveRequested(Move move),
    @required TResult selectRequested(Coordinates coordinates),
    @required TResult restartRequested(),
    @required TResult gameChangeRequested(Game newGame),
  }) {
    assert(moveRequested != null);
    assert(selectRequested != null);
    assert(restartRequested != null);
    assert(gameChangeRequested != null);
    return moveRequested(move);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult moveRequested(Move move),
    TResult selectRequested(Coordinates coordinates),
    TResult restartRequested(),
    TResult gameChangeRequested(Game newGame),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (moveRequested != null) {
      return moveRequested(move);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult moveRequested(MoveRequested value),
    @required TResult selectRequested(SelectRequested value),
    @required TResult restartRequested(RestartRequested value),
    @required TResult gameChangeRequested(GameChangeRequested value),
  }) {
    assert(moveRequested != null);
    assert(selectRequested != null);
    assert(restartRequested != null);
    assert(gameChangeRequested != null);
    return moveRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult moveRequested(MoveRequested value),
    TResult selectRequested(SelectRequested value),
    TResult restartRequested(RestartRequested value),
    TResult gameChangeRequested(GameChangeRequested value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (moveRequested != null) {
      return moveRequested(this);
    }
    return orElse();
  }
}

abstract class MoveRequested implements GameEvent {
  const factory MoveRequested(Move move) = _$MoveRequested;

  Move get move;
  @JsonKey(ignore: true)
  $MoveRequestedCopyWith<MoveRequested> get copyWith;
}

/// @nodoc
abstract class $SelectRequestedCopyWith<$Res> {
  factory $SelectRequestedCopyWith(
          SelectRequested value, $Res Function(SelectRequested) then) =
      _$SelectRequestedCopyWithImpl<$Res>;
  $Res call({Coordinates coordinates});

  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$SelectRequestedCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements $SelectRequestedCopyWith<$Res> {
  _$SelectRequestedCopyWithImpl(
      SelectRequested _value, $Res Function(SelectRequested) _then)
      : super(_value, (v) => _then(v as SelectRequested));

  @override
  SelectRequested get _value => super._value as SelectRequested;

  @override
  $Res call({
    Object coordinates = freezed,
  }) {
    return _then(SelectRequested(
      coordinates == freezed ? _value.coordinates : coordinates as Coordinates,
    ));
  }

  @override
  $CoordinatesCopyWith<$Res> get coordinates {
    if (_value.coordinates == null) {
      return null;
    }
    return $CoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
class _$SelectRequested implements SelectRequested {
  const _$SelectRequested(this.coordinates) : assert(coordinates != null);

  @override
  final Coordinates coordinates;

  @override
  String toString() {
    return 'GameEvent.selectRequested(coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectRequested &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(coordinates);

  @JsonKey(ignore: true)
  @override
  $SelectRequestedCopyWith<SelectRequested> get copyWith =>
      _$SelectRequestedCopyWithImpl<SelectRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult moveRequested(Move move),
    @required TResult selectRequested(Coordinates coordinates),
    @required TResult restartRequested(),
    @required TResult gameChangeRequested(Game newGame),
  }) {
    assert(moveRequested != null);
    assert(selectRequested != null);
    assert(restartRequested != null);
    assert(gameChangeRequested != null);
    return selectRequested(coordinates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult moveRequested(Move move),
    TResult selectRequested(Coordinates coordinates),
    TResult restartRequested(),
    TResult gameChangeRequested(Game newGame),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectRequested != null) {
      return selectRequested(coordinates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult moveRequested(MoveRequested value),
    @required TResult selectRequested(SelectRequested value),
    @required TResult restartRequested(RestartRequested value),
    @required TResult gameChangeRequested(GameChangeRequested value),
  }) {
    assert(moveRequested != null);
    assert(selectRequested != null);
    assert(restartRequested != null);
    assert(gameChangeRequested != null);
    return selectRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult moveRequested(MoveRequested value),
    TResult selectRequested(SelectRequested value),
    TResult restartRequested(RestartRequested value),
    TResult gameChangeRequested(GameChangeRequested value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectRequested != null) {
      return selectRequested(this);
    }
    return orElse();
  }
}

abstract class SelectRequested implements GameEvent {
  const factory SelectRequested(Coordinates coordinates) = _$SelectRequested;

  Coordinates get coordinates;
  @JsonKey(ignore: true)
  $SelectRequestedCopyWith<SelectRequested> get copyWith;
}

/// @nodoc
abstract class $RestartRequestedCopyWith<$Res> {
  factory $RestartRequestedCopyWith(
          RestartRequested value, $Res Function(RestartRequested) then) =
      _$RestartRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestartRequestedCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements $RestartRequestedCopyWith<$Res> {
  _$RestartRequestedCopyWithImpl(
      RestartRequested _value, $Res Function(RestartRequested) _then)
      : super(_value, (v) => _then(v as RestartRequested));

  @override
  RestartRequested get _value => super._value as RestartRequested;
}

/// @nodoc
class _$RestartRequested implements RestartRequested {
  const _$RestartRequested();

  @override
  String toString() {
    return 'GameEvent.restartRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RestartRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult moveRequested(Move move),
    @required TResult selectRequested(Coordinates coordinates),
    @required TResult restartRequested(),
    @required TResult gameChangeRequested(Game newGame),
  }) {
    assert(moveRequested != null);
    assert(selectRequested != null);
    assert(restartRequested != null);
    assert(gameChangeRequested != null);
    return restartRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult moveRequested(Move move),
    TResult selectRequested(Coordinates coordinates),
    TResult restartRequested(),
    TResult gameChangeRequested(Game newGame),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (restartRequested != null) {
      return restartRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult moveRequested(MoveRequested value),
    @required TResult selectRequested(SelectRequested value),
    @required TResult restartRequested(RestartRequested value),
    @required TResult gameChangeRequested(GameChangeRequested value),
  }) {
    assert(moveRequested != null);
    assert(selectRequested != null);
    assert(restartRequested != null);
    assert(gameChangeRequested != null);
    return restartRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult moveRequested(MoveRequested value),
    TResult selectRequested(SelectRequested value),
    TResult restartRequested(RestartRequested value),
    TResult gameChangeRequested(GameChangeRequested value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (restartRequested != null) {
      return restartRequested(this);
    }
    return orElse();
  }
}

abstract class RestartRequested implements GameEvent {
  const factory RestartRequested() = _$RestartRequested;
}

/// @nodoc
abstract class $GameChangeRequestedCopyWith<$Res> {
  factory $GameChangeRequestedCopyWith(
          GameChangeRequested value, $Res Function(GameChangeRequested) then) =
      _$GameChangeRequestedCopyWithImpl<$Res>;
  $Res call({Game newGame});
}

/// @nodoc
class _$GameChangeRequestedCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res>
    implements $GameChangeRequestedCopyWith<$Res> {
  _$GameChangeRequestedCopyWithImpl(
      GameChangeRequested _value, $Res Function(GameChangeRequested) _then)
      : super(_value, (v) => _then(v as GameChangeRequested));

  @override
  GameChangeRequested get _value => super._value as GameChangeRequested;

  @override
  $Res call({
    Object newGame = freezed,
  }) {
    return _then(GameChangeRequested(
      newGame == freezed ? _value.newGame : newGame as Game,
    ));
  }
}

/// @nodoc
class _$GameChangeRequested implements GameChangeRequested {
  const _$GameChangeRequested(this.newGame) : assert(newGame != null);

  @override
  final Game newGame;

  @override
  String toString() {
    return 'GameEvent.gameChangeRequested(newGame: $newGame)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameChangeRequested &&
            (identical(other.newGame, newGame) ||
                const DeepCollectionEquality().equals(other.newGame, newGame)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newGame);

  @JsonKey(ignore: true)
  @override
  $GameChangeRequestedCopyWith<GameChangeRequested> get copyWith =>
      _$GameChangeRequestedCopyWithImpl<GameChangeRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult moveRequested(Move move),
    @required TResult selectRequested(Coordinates coordinates),
    @required TResult restartRequested(),
    @required TResult gameChangeRequested(Game newGame),
  }) {
    assert(moveRequested != null);
    assert(selectRequested != null);
    assert(restartRequested != null);
    assert(gameChangeRequested != null);
    return gameChangeRequested(newGame);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult moveRequested(Move move),
    TResult selectRequested(Coordinates coordinates),
    TResult restartRequested(),
    TResult gameChangeRequested(Game newGame),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (gameChangeRequested != null) {
      return gameChangeRequested(newGame);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult moveRequested(MoveRequested value),
    @required TResult selectRequested(SelectRequested value),
    @required TResult restartRequested(RestartRequested value),
    @required TResult gameChangeRequested(GameChangeRequested value),
  }) {
    assert(moveRequested != null);
    assert(selectRequested != null);
    assert(restartRequested != null);
    assert(gameChangeRequested != null);
    return gameChangeRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult moveRequested(MoveRequested value),
    TResult selectRequested(SelectRequested value),
    TResult restartRequested(RestartRequested value),
    TResult gameChangeRequested(GameChangeRequested value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (gameChangeRequested != null) {
      return gameChangeRequested(this);
    }
    return orElse();
  }
}

abstract class GameChangeRequested implements GameEvent {
  const factory GameChangeRequested(Game newGame) = _$GameChangeRequested;

  Game get newGame;
  @JsonKey(ignore: true)
  $GameChangeRequestedCopyWith<GameChangeRequested> get copyWith;
}

/// @nodoc
class _$GameStateTearOff {
  const _$GameStateTearOff();

// ignore: unused_element
  GameOn gameOn(
      {@required Board board,
      @required Option<Coordinates> selected,
      @required Option<MoveFailure> moveFailure}) {
    return GameOn(
      board: board,
      selected: selected,
      moveFailure: moveFailure,
    );
  }

// ignore: unused_element
  GameOver gameOver({@required Board board}) {
    return GameOver(
      board: board,
    );
  }

// ignore: unused_element
  NoGame noGame() {
    return const NoGame();
  }
}

/// @nodoc
// ignore: unused_element
const $GameState = _$GameStateTearOff();

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult gameOn(Board board, Option<Coordinates> selected,
            Option<MoveFailure> moveFailure),
    @required TResult gameOver(Board board),
    @required TResult noGame(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult gameOn(Board board, Option<Coordinates> selected,
        Option<MoveFailure> moveFailure),
    TResult gameOver(Board board),
    TResult noGame(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult gameOn(GameOn value),
    @required TResult gameOver(GameOver value),
    @required TResult noGame(NoGame value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult gameOn(GameOn value),
    TResult gameOver(GameOver value),
    TResult noGame(NoGame value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;
  // ignore: unused_field
  final $Res Function(GameState) _then;
}

/// @nodoc
abstract class $GameOnCopyWith<$Res> {
  factory $GameOnCopyWith(GameOn value, $Res Function(GameOn) then) =
      _$GameOnCopyWithImpl<$Res>;
  $Res call(
      {Board board,
      Option<Coordinates> selected,
      Option<MoveFailure> moveFailure});
}

/// @nodoc
class _$GameOnCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $GameOnCopyWith<$Res> {
  _$GameOnCopyWithImpl(GameOn _value, $Res Function(GameOn) _then)
      : super(_value, (v) => _then(v as GameOn));

  @override
  GameOn get _value => super._value as GameOn;

  @override
  $Res call({
    Object board = freezed,
    Object selected = freezed,
    Object moveFailure = freezed,
  }) {
    return _then(GameOn(
      board: board == freezed ? _value.board : board as Board,
      selected: selected == freezed
          ? _value.selected
          : selected as Option<Coordinates>,
      moveFailure: moveFailure == freezed
          ? _value.moveFailure
          : moveFailure as Option<MoveFailure>,
    ));
  }
}

/// @nodoc
class _$GameOn implements GameOn {
  const _$GameOn(
      {@required this.board,
      @required this.selected,
      @required this.moveFailure})
      : assert(board != null),
        assert(selected != null),
        assert(moveFailure != null);

  @override
  final Board board;
  @override
  final Option<Coordinates> selected;
  @override
  final Option<MoveFailure> moveFailure;

  @override
  String toString() {
    return 'GameState.gameOn(board: $board, selected: $selected, moveFailure: $moveFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameOn &&
            (identical(other.board, board) ||
                const DeepCollectionEquality().equals(other.board, board)) &&
            (identical(other.selected, selected) ||
                const DeepCollectionEquality()
                    .equals(other.selected, selected)) &&
            (identical(other.moveFailure, moveFailure) ||
                const DeepCollectionEquality()
                    .equals(other.moveFailure, moveFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(board) ^
      const DeepCollectionEquality().hash(selected) ^
      const DeepCollectionEquality().hash(moveFailure);

  @JsonKey(ignore: true)
  @override
  $GameOnCopyWith<GameOn> get copyWith =>
      _$GameOnCopyWithImpl<GameOn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult gameOn(Board board, Option<Coordinates> selected,
            Option<MoveFailure> moveFailure),
    @required TResult gameOver(Board board),
    @required TResult noGame(),
  }) {
    assert(gameOn != null);
    assert(gameOver != null);
    assert(noGame != null);
    return gameOn(board, selected, moveFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult gameOn(Board board, Option<Coordinates> selected,
        Option<MoveFailure> moveFailure),
    TResult gameOver(Board board),
    TResult noGame(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (gameOn != null) {
      return gameOn(board, selected, moveFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult gameOn(GameOn value),
    @required TResult gameOver(GameOver value),
    @required TResult noGame(NoGame value),
  }) {
    assert(gameOn != null);
    assert(gameOver != null);
    assert(noGame != null);
    return gameOn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult gameOn(GameOn value),
    TResult gameOver(GameOver value),
    TResult noGame(NoGame value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (gameOn != null) {
      return gameOn(this);
    }
    return orElse();
  }
}

abstract class GameOn implements GameState {
  const factory GameOn(
      {@required Board board,
      @required Option<Coordinates> selected,
      @required Option<MoveFailure> moveFailure}) = _$GameOn;

  Board get board;
  Option<Coordinates> get selected;
  Option<MoveFailure> get moveFailure;
  @JsonKey(ignore: true)
  $GameOnCopyWith<GameOn> get copyWith;
}

/// @nodoc
abstract class $GameOverCopyWith<$Res> {
  factory $GameOverCopyWith(GameOver value, $Res Function(GameOver) then) =
      _$GameOverCopyWithImpl<$Res>;
  $Res call({Board board});
}

/// @nodoc
class _$GameOverCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $GameOverCopyWith<$Res> {
  _$GameOverCopyWithImpl(GameOver _value, $Res Function(GameOver) _then)
      : super(_value, (v) => _then(v as GameOver));

  @override
  GameOver get _value => super._value as GameOver;

  @override
  $Res call({
    Object board = freezed,
  }) {
    return _then(GameOver(
      board: board == freezed ? _value.board : board as Board,
    ));
  }
}

/// @nodoc
class _$GameOver implements GameOver {
  const _$GameOver({@required this.board}) : assert(board != null);

  @override
  final Board board;

  @override
  String toString() {
    return 'GameState.gameOver(board: $board)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameOver &&
            (identical(other.board, board) ||
                const DeepCollectionEquality().equals(other.board, board)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(board);

  @JsonKey(ignore: true)
  @override
  $GameOverCopyWith<GameOver> get copyWith =>
      _$GameOverCopyWithImpl<GameOver>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult gameOn(Board board, Option<Coordinates> selected,
            Option<MoveFailure> moveFailure),
    @required TResult gameOver(Board board),
    @required TResult noGame(),
  }) {
    assert(gameOn != null);
    assert(gameOver != null);
    assert(noGame != null);
    return gameOver(board);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult gameOn(Board board, Option<Coordinates> selected,
        Option<MoveFailure> moveFailure),
    TResult gameOver(Board board),
    TResult noGame(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (gameOver != null) {
      return gameOver(board);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult gameOn(GameOn value),
    @required TResult gameOver(GameOver value),
    @required TResult noGame(NoGame value),
  }) {
    assert(gameOn != null);
    assert(gameOver != null);
    assert(noGame != null);
    return gameOver(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult gameOn(GameOn value),
    TResult gameOver(GameOver value),
    TResult noGame(NoGame value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (gameOver != null) {
      return gameOver(this);
    }
    return orElse();
  }
}

abstract class GameOver implements GameState {
  const factory GameOver({@required Board board}) = _$GameOver;

  Board get board;
  @JsonKey(ignore: true)
  $GameOverCopyWith<GameOver> get copyWith;
}

/// @nodoc
abstract class $NoGameCopyWith<$Res> {
  factory $NoGameCopyWith(NoGame value, $Res Function(NoGame) then) =
      _$NoGameCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoGameCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $NoGameCopyWith<$Res> {
  _$NoGameCopyWithImpl(NoGame _value, $Res Function(NoGame) _then)
      : super(_value, (v) => _then(v as NoGame));

  @override
  NoGame get _value => super._value as NoGame;
}

/// @nodoc
class _$NoGame implements NoGame {
  const _$NoGame();

  @override
  String toString() {
    return 'GameState.noGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult gameOn(Board board, Option<Coordinates> selected,
            Option<MoveFailure> moveFailure),
    @required TResult gameOver(Board board),
    @required TResult noGame(),
  }) {
    assert(gameOn != null);
    assert(gameOver != null);
    assert(noGame != null);
    return noGame();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult gameOn(Board board, Option<Coordinates> selected,
        Option<MoveFailure> moveFailure),
    TResult gameOver(Board board),
    TResult noGame(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noGame != null) {
      return noGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult gameOn(GameOn value),
    @required TResult gameOver(GameOver value),
    @required TResult noGame(NoGame value),
  }) {
    assert(gameOn != null);
    assert(gameOver != null);
    assert(noGame != null);
    return noGame(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult gameOn(GameOn value),
    TResult gameOver(GameOver value),
    TResult noGame(NoGame value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noGame != null) {
      return noGame(this);
    }
    return orElse();
  }
}

abstract class NoGame implements GameState {
  const factory NoGame() = _$NoGame;
}
