// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$ShortPassword<T>
    with DiagnosticableTreeMixin
    implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}

/// @nodoc
class _$MoveFailureTearOff {
  const _$MoveFailureTearOff();

// ignore: unused_element
  NoPieceToMove noPieceToMove({@required Coordinates coordinates}) {
    return NoPieceToMove(
      coordinates: coordinates,
    );
  }

// ignore: unused_element
  PieceCantMove pieceCantMove(
      {@required Coordinates coordinates, @required Move move}) {
    return PieceCantMove(
      coordinates: coordinates,
      move: move,
    );
  }

// ignore: unused_element
  NoPieceSelected noPieceSelected() {
    return const NoPieceSelected();
  }
}

/// @nodoc
// ignore: unused_element
const $MoveFailure = _$MoveFailureTearOff();

/// @nodoc
mixin _$MoveFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noPieceToMove(Coordinates coordinates),
    @required TResult pieceCantMove(Coordinates coordinates, Move move),
    @required TResult noPieceSelected(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noPieceToMove(Coordinates coordinates),
    TResult pieceCantMove(Coordinates coordinates, Move move),
    TResult noPieceSelected(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noPieceToMove(NoPieceToMove value),
    @required TResult pieceCantMove(PieceCantMove value),
    @required TResult noPieceSelected(NoPieceSelected value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noPieceToMove(NoPieceToMove value),
    TResult pieceCantMove(PieceCantMove value),
    TResult noPieceSelected(NoPieceSelected value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MoveFailureCopyWith<$Res> {
  factory $MoveFailureCopyWith(
          MoveFailure value, $Res Function(MoveFailure) then) =
      _$MoveFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoveFailureCopyWithImpl<$Res> implements $MoveFailureCopyWith<$Res> {
  _$MoveFailureCopyWithImpl(this._value, this._then);

  final MoveFailure _value;
  // ignore: unused_field
  final $Res Function(MoveFailure) _then;
}

/// @nodoc
abstract class $NoPieceToMoveCopyWith<$Res> {
  factory $NoPieceToMoveCopyWith(
          NoPieceToMove value, $Res Function(NoPieceToMove) then) =
      _$NoPieceToMoveCopyWithImpl<$Res>;
  $Res call({Coordinates coordinates});

  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$NoPieceToMoveCopyWithImpl<$Res> extends _$MoveFailureCopyWithImpl<$Res>
    implements $NoPieceToMoveCopyWith<$Res> {
  _$NoPieceToMoveCopyWithImpl(
      NoPieceToMove _value, $Res Function(NoPieceToMove) _then)
      : super(_value, (v) => _then(v as NoPieceToMove));

  @override
  NoPieceToMove get _value => super._value as NoPieceToMove;

  @override
  $Res call({
    Object coordinates = freezed,
  }) {
    return _then(NoPieceToMove(
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates as Coordinates,
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
class _$NoPieceToMove with DiagnosticableTreeMixin implements NoPieceToMove {
  const _$NoPieceToMove({@required this.coordinates})
      : assert(coordinates != null);

  @override
  final Coordinates coordinates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoveFailure.noPieceToMove(coordinates: $coordinates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MoveFailure.noPieceToMove'))
      ..add(DiagnosticsProperty('coordinates', coordinates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoPieceToMove &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(coordinates);

  @JsonKey(ignore: true)
  @override
  $NoPieceToMoveCopyWith<NoPieceToMove> get copyWith =>
      _$NoPieceToMoveCopyWithImpl<NoPieceToMove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noPieceToMove(Coordinates coordinates),
    @required TResult pieceCantMove(Coordinates coordinates, Move move),
    @required TResult noPieceSelected(),
  }) {
    assert(noPieceToMove != null);
    assert(pieceCantMove != null);
    assert(noPieceSelected != null);
    return noPieceToMove(coordinates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noPieceToMove(Coordinates coordinates),
    TResult pieceCantMove(Coordinates coordinates, Move move),
    TResult noPieceSelected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noPieceToMove != null) {
      return noPieceToMove(coordinates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noPieceToMove(NoPieceToMove value),
    @required TResult pieceCantMove(PieceCantMove value),
    @required TResult noPieceSelected(NoPieceSelected value),
  }) {
    assert(noPieceToMove != null);
    assert(pieceCantMove != null);
    assert(noPieceSelected != null);
    return noPieceToMove(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noPieceToMove(NoPieceToMove value),
    TResult pieceCantMove(PieceCantMove value),
    TResult noPieceSelected(NoPieceSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noPieceToMove != null) {
      return noPieceToMove(this);
    }
    return orElse();
  }
}

abstract class NoPieceToMove implements MoveFailure {
  const factory NoPieceToMove({@required Coordinates coordinates}) =
      _$NoPieceToMove;

  Coordinates get coordinates;
  @JsonKey(ignore: true)
  $NoPieceToMoveCopyWith<NoPieceToMove> get copyWith;
}

/// @nodoc
abstract class $PieceCantMoveCopyWith<$Res> {
  factory $PieceCantMoveCopyWith(
          PieceCantMove value, $Res Function(PieceCantMove) then) =
      _$PieceCantMoveCopyWithImpl<$Res>;
  $Res call({Coordinates coordinates, Move move});

  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$PieceCantMoveCopyWithImpl<$Res> extends _$MoveFailureCopyWithImpl<$Res>
    implements $PieceCantMoveCopyWith<$Res> {
  _$PieceCantMoveCopyWithImpl(
      PieceCantMove _value, $Res Function(PieceCantMove) _then)
      : super(_value, (v) => _then(v as PieceCantMove));

  @override
  PieceCantMove get _value => super._value as PieceCantMove;

  @override
  $Res call({
    Object coordinates = freezed,
    Object move = freezed,
  }) {
    return _then(PieceCantMove(
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates as Coordinates,
      move: move == freezed ? _value.move : move as Move,
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
class _$PieceCantMove with DiagnosticableTreeMixin implements PieceCantMove {
  const _$PieceCantMove({@required this.coordinates, @required this.move})
      : assert(coordinates != null),
        assert(move != null);

  @override
  final Coordinates coordinates;
  @override
  final Move move;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoveFailure.pieceCantMove(coordinates: $coordinates, move: $move)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MoveFailure.pieceCantMove'))
      ..add(DiagnosticsProperty('coordinates', coordinates))
      ..add(DiagnosticsProperty('move', move));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PieceCantMove &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)) &&
            (identical(other.move, move) ||
                const DeepCollectionEquality().equals(other.move, move)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coordinates) ^
      const DeepCollectionEquality().hash(move);

  @JsonKey(ignore: true)
  @override
  $PieceCantMoveCopyWith<PieceCantMove> get copyWith =>
      _$PieceCantMoveCopyWithImpl<PieceCantMove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noPieceToMove(Coordinates coordinates),
    @required TResult pieceCantMove(Coordinates coordinates, Move move),
    @required TResult noPieceSelected(),
  }) {
    assert(noPieceToMove != null);
    assert(pieceCantMove != null);
    assert(noPieceSelected != null);
    return pieceCantMove(coordinates, move);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noPieceToMove(Coordinates coordinates),
    TResult pieceCantMove(Coordinates coordinates, Move move),
    TResult noPieceSelected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pieceCantMove != null) {
      return pieceCantMove(coordinates, move);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noPieceToMove(NoPieceToMove value),
    @required TResult pieceCantMove(PieceCantMove value),
    @required TResult noPieceSelected(NoPieceSelected value),
  }) {
    assert(noPieceToMove != null);
    assert(pieceCantMove != null);
    assert(noPieceSelected != null);
    return pieceCantMove(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noPieceToMove(NoPieceToMove value),
    TResult pieceCantMove(PieceCantMove value),
    TResult noPieceSelected(NoPieceSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pieceCantMove != null) {
      return pieceCantMove(this);
    }
    return orElse();
  }
}

abstract class PieceCantMove implements MoveFailure {
  const factory PieceCantMove(
      {@required Coordinates coordinates,
      @required Move move}) = _$PieceCantMove;

  Coordinates get coordinates;
  Move get move;
  @JsonKey(ignore: true)
  $PieceCantMoveCopyWith<PieceCantMove> get copyWith;
}

/// @nodoc
abstract class $NoPieceSelectedCopyWith<$Res> {
  factory $NoPieceSelectedCopyWith(
          NoPieceSelected value, $Res Function(NoPieceSelected) then) =
      _$NoPieceSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoPieceSelectedCopyWithImpl<$Res>
    extends _$MoveFailureCopyWithImpl<$Res>
    implements $NoPieceSelectedCopyWith<$Res> {
  _$NoPieceSelectedCopyWithImpl(
      NoPieceSelected _value, $Res Function(NoPieceSelected) _then)
      : super(_value, (v) => _then(v as NoPieceSelected));

  @override
  NoPieceSelected get _value => super._value as NoPieceSelected;
}

/// @nodoc
class _$NoPieceSelected
    with DiagnosticableTreeMixin
    implements NoPieceSelected {
  const _$NoPieceSelected();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoveFailure.noPieceSelected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MoveFailure.noPieceSelected'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoPieceSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noPieceToMove(Coordinates coordinates),
    @required TResult pieceCantMove(Coordinates coordinates, Move move),
    @required TResult noPieceSelected(),
  }) {
    assert(noPieceToMove != null);
    assert(pieceCantMove != null);
    assert(noPieceSelected != null);
    return noPieceSelected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noPieceToMove(Coordinates coordinates),
    TResult pieceCantMove(Coordinates coordinates, Move move),
    TResult noPieceSelected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noPieceSelected != null) {
      return noPieceSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noPieceToMove(NoPieceToMove value),
    @required TResult pieceCantMove(PieceCantMove value),
    @required TResult noPieceSelected(NoPieceSelected value),
  }) {
    assert(noPieceToMove != null);
    assert(pieceCantMove != null);
    assert(noPieceSelected != null);
    return noPieceSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noPieceToMove(NoPieceToMove value),
    TResult pieceCantMove(PieceCantMove value),
    TResult noPieceSelected(NoPieceSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noPieceSelected != null) {
      return noPieceSelected(this);
    }
    return orElse();
  }
}

abstract class NoPieceSelected implements MoveFailure {
  const factory NoPieceSelected() = _$NoPieceSelected;
}
