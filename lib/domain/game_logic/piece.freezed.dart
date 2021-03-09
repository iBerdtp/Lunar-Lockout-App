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
  Shuttle shuttle() {
    return const Shuttle();
  }

// ignore: unused_element
  Pawn pawn() {
    return const Pawn();
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
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult shuttle(),
    @required TResult pawn(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult shuttle(),
    TResult pawn(),
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
}

/// @nodoc
abstract class $PieceCopyWith<$Res> {
  factory $PieceCopyWith(Piece value, $Res Function(Piece) then) =
      _$PieceCopyWithImpl<$Res>;
}

/// @nodoc
class _$PieceCopyWithImpl<$Res> implements $PieceCopyWith<$Res> {
  _$PieceCopyWithImpl(this._value, this._then);

  final Piece _value;
  // ignore: unused_field
  final $Res Function(Piece) _then;
}

/// @nodoc
abstract class $ShuttleCopyWith<$Res> {
  factory $ShuttleCopyWith(Shuttle value, $Res Function(Shuttle) then) =
      _$ShuttleCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShuttleCopyWithImpl<$Res> extends _$PieceCopyWithImpl<$Res>
    implements $ShuttleCopyWith<$Res> {
  _$ShuttleCopyWithImpl(Shuttle _value, $Res Function(Shuttle) _then)
      : super(_value, (v) => _then(v as Shuttle));

  @override
  Shuttle get _value => super._value as Shuttle;
}

@JsonSerializable()

/// @nodoc
class _$Shuttle implements Shuttle {
  const _$Shuttle();

  factory _$Shuttle.fromJson(Map<String, dynamic> json) =>
      _$_$ShuttleFromJson(json);

  @override
  String toString() {
    return 'Piece.shuttle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Shuttle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult shuttle(),
    @required TResult pawn(),
  }) {
    assert(shuttle != null);
    assert(pawn != null);
    return shuttle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult shuttle(),
    TResult pawn(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shuttle != null) {
      return shuttle();
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
  const factory Shuttle() = _$Shuttle;

  factory Shuttle.fromJson(Map<String, dynamic> json) = _$Shuttle.fromJson;
}

/// @nodoc
abstract class $PawnCopyWith<$Res> {
  factory $PawnCopyWith(Pawn value, $Res Function(Pawn) then) =
      _$PawnCopyWithImpl<$Res>;
}

/// @nodoc
class _$PawnCopyWithImpl<$Res> extends _$PieceCopyWithImpl<$Res>
    implements $PawnCopyWith<$Res> {
  _$PawnCopyWithImpl(Pawn _value, $Res Function(Pawn) _then)
      : super(_value, (v) => _then(v as Pawn));

  @override
  Pawn get _value => super._value as Pawn;
}

@JsonSerializable()

/// @nodoc
class _$Pawn implements Pawn {
  const _$Pawn();

  factory _$Pawn.fromJson(Map<String, dynamic> json) => _$_$PawnFromJson(json);

  @override
  String toString() {
    return 'Piece.pawn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Pawn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult shuttle(),
    @required TResult pawn(),
  }) {
    assert(shuttle != null);
    assert(pawn != null);
    return pawn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult shuttle(),
    TResult pawn(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pawn != null) {
      return pawn();
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
  const factory Pawn() = _$Pawn;

  factory Pawn.fromJson(Map<String, dynamic> json) = _$Pawn.fromJson;
}
