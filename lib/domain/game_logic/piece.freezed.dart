// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'piece.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Piece _$PieceFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'shuttle':
      return Shuttle.fromJson(json);
    case 'pawn':
      return Pawn.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$PieceTearOff {
  const _$PieceTearOff();

// ignore: unused_element
  Shuttle shuttle(Coordinates c) {
    return Shuttle(
      c,
    );
  }

// ignore: unused_element
  Pawn pawn(Coordinates c) {
    return Pawn(
      c,
    );
  }

// ignore: unused_element
  Piece fromJson(Map<String, Object> json) {
    return Piece.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Piece = _$PieceTearOff();

/// @nodoc
mixin _$Piece {
  Coordinates get c;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult shuttle(Coordinates c),
    @required TResult pawn(Coordinates c),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult shuttle(Coordinates c),
    TResult pawn(Coordinates c),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult shuttle(Shuttle value),
    @required TResult pawn(Pawn value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult shuttle(Shuttle value),
    TResult pawn(Pawn value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PieceCopyWith<Piece> get copyWith;
}

/// @nodoc
abstract class $PieceCopyWith<$Res> {
  factory $PieceCopyWith(Piece value, $Res Function(Piece) then) =
      _$PieceCopyWithImpl<$Res>;
  $Res call({Coordinates c});

  $CoordinatesCopyWith<$Res> get c;
}

/// @nodoc
class _$PieceCopyWithImpl<$Res> implements $PieceCopyWith<$Res> {
  _$PieceCopyWithImpl(this._value, this._then);

  final Piece _value;
  // ignore: unused_field
  final $Res Function(Piece) _then;

  @override
  $Res call({
    Object c = freezed,
  }) {
    return _then(_value.copyWith(
      c: c == freezed ? _value.c : c as Coordinates,
    ));
  }

  @override
  $CoordinatesCopyWith<$Res> get c {
    if (_value.c == null) {
      return null;
    }
    return $CoordinatesCopyWith<$Res>(_value.c, (value) {
      return _then(_value.copyWith(c: value));
    });
  }
}

/// @nodoc
abstract class $ShuttleCopyWith<$Res> implements $PieceCopyWith<$Res> {
  factory $ShuttleCopyWith(Shuttle value, $Res Function(Shuttle) then) =
      _$ShuttleCopyWithImpl<$Res>;
  @override
  $Res call({Coordinates c});

  @override
  $CoordinatesCopyWith<$Res> get c;
}

/// @nodoc
class _$ShuttleCopyWithImpl<$Res> extends _$PieceCopyWithImpl<$Res>
    implements $ShuttleCopyWith<$Res> {
  _$ShuttleCopyWithImpl(Shuttle _value, $Res Function(Shuttle) _then)
      : super(_value, (v) => _then(v as Shuttle));

  @override
  Shuttle get _value => super._value as Shuttle;

  @override
  $Res call({
    Object c = freezed,
  }) {
    return _then(Shuttle(
      c == freezed ? _value.c : c as Coordinates,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Shuttle implements Shuttle {
  const _$Shuttle(this.c) : assert(c != null);

  factory _$Shuttle.fromJson(Map<String, dynamic> json) =>
      _$_$ShuttleFromJson(json);

  @override
  final Coordinates c;

  @override
  String toString() {
    return 'Piece.shuttle(c: $c)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Shuttle &&
            (identical(other.c, c) ||
                const DeepCollectionEquality().equals(other.c, c)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(c);

  @JsonKey(ignore: true)
  @override
  $ShuttleCopyWith<Shuttle> get copyWith =>
      _$ShuttleCopyWithImpl<Shuttle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult shuttle(Coordinates c),
    @required TResult pawn(Coordinates c),
  }) {
    assert(shuttle != null);
    assert(pawn != null);
    return shuttle(c);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult shuttle(Coordinates c),
    TResult pawn(Coordinates c),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shuttle != null) {
      return shuttle(c);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult shuttle(Shuttle value),
    @required TResult pawn(Pawn value),
  }) {
    assert(shuttle != null);
    assert(pawn != null);
    return shuttle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult shuttle(Shuttle value),
    TResult pawn(Pawn value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shuttle != null) {
      return shuttle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ShuttleToJson(this)..['runtimeType'] = 'shuttle';
  }
}

abstract class Shuttle implements Piece {
  const factory Shuttle(Coordinates c) = _$Shuttle;

  factory Shuttle.fromJson(Map<String, dynamic> json) = _$Shuttle.fromJson;

  @override
  Coordinates get c;
  @override
  @JsonKey(ignore: true)
  $ShuttleCopyWith<Shuttle> get copyWith;
}

/// @nodoc
abstract class $PawnCopyWith<$Res> implements $PieceCopyWith<$Res> {
  factory $PawnCopyWith(Pawn value, $Res Function(Pawn) then) =
      _$PawnCopyWithImpl<$Res>;
  @override
  $Res call({Coordinates c});

  @override
  $CoordinatesCopyWith<$Res> get c;
}

/// @nodoc
class _$PawnCopyWithImpl<$Res> extends _$PieceCopyWithImpl<$Res>
    implements $PawnCopyWith<$Res> {
  _$PawnCopyWithImpl(Pawn _value, $Res Function(Pawn) _then)
      : super(_value, (v) => _then(v as Pawn));

  @override
  Pawn get _value => super._value as Pawn;

  @override
  $Res call({
    Object c = freezed,
  }) {
    return _then(Pawn(
      c == freezed ? _value.c : c as Coordinates,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Pawn implements Pawn {
  const _$Pawn(this.c) : assert(c != null);

  factory _$Pawn.fromJson(Map<String, dynamic> json) => _$_$PawnFromJson(json);

  @override
  final Coordinates c;

  @override
  String toString() {
    return 'Piece.pawn(c: $c)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Pawn &&
            (identical(other.c, c) ||
                const DeepCollectionEquality().equals(other.c, c)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(c);

  @JsonKey(ignore: true)
  @override
  $PawnCopyWith<Pawn> get copyWith =>
      _$PawnCopyWithImpl<Pawn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult shuttle(Coordinates c),
    @required TResult pawn(Coordinates c),
  }) {
    assert(shuttle != null);
    assert(pawn != null);
    return pawn(c);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult shuttle(Coordinates c),
    TResult pawn(Coordinates c),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pawn != null) {
      return pawn(c);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult shuttle(Shuttle value),
    @required TResult pawn(Pawn value),
  }) {
    assert(shuttle != null);
    assert(pawn != null);
    return pawn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult shuttle(Shuttle value),
    TResult pawn(Pawn value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pawn != null) {
      return pawn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$PawnToJson(this)..['runtimeType'] = 'pawn';
  }
}

abstract class Pawn implements Piece {
  const factory Pawn(Coordinates c) = _$Pawn;

  factory Pawn.fromJson(Map<String, dynamic> json) = _$Pawn.fromJson;

  @override
  Coordinates get c;
  @override
  @JsonKey(ignore: true)
  $PawnCopyWith<Pawn> get copyWith;
}
