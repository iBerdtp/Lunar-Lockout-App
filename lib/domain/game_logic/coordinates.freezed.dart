// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'coordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return _Coordinates.fromJson(json);
}

/// @nodoc
class _$CoordinatesTearOff {
  const _$CoordinatesTearOff();

// ignore: unused_element
  _Coordinates call(int x, int y) {
    return _Coordinates(
      x,
      y,
    );
  }

// ignore: unused_element
  Coordinates fromJson(Map<String, Object> json) {
    return Coordinates.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Coordinates = _$CoordinatesTearOff();

/// @nodoc
mixin _$Coordinates {
  int get x;
  int get y;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CoordinatesCopyWith<Coordinates> get copyWith;
}

/// @nodoc
abstract class $CoordinatesCopyWith<$Res> {
  factory $CoordinatesCopyWith(
          Coordinates value, $Res Function(Coordinates) then) =
      _$CoordinatesCopyWithImpl<$Res>;
  $Res call({int x, int y});
}

/// @nodoc
class _$CoordinatesCopyWithImpl<$Res> implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._value, this._then);

  final Coordinates _value;
  // ignore: unused_field
  final $Res Function(Coordinates) _then;

  @override
  $Res call({
    Object x = freezed,
    Object y = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed ? _value.x : x as int,
      y: y == freezed ? _value.y : y as int,
    ));
  }
}

/// @nodoc
abstract class _$CoordinatesCopyWith<$Res>
    implements $CoordinatesCopyWith<$Res> {
  factory _$CoordinatesCopyWith(
          _Coordinates value, $Res Function(_Coordinates) then) =
      __$CoordinatesCopyWithImpl<$Res>;
  @override
  $Res call({int x, int y});
}

/// @nodoc
class __$CoordinatesCopyWithImpl<$Res> extends _$CoordinatesCopyWithImpl<$Res>
    implements _$CoordinatesCopyWith<$Res> {
  __$CoordinatesCopyWithImpl(
      _Coordinates _value, $Res Function(_Coordinates) _then)
      : super(_value, (v) => _then(v as _Coordinates));

  @override
  _Coordinates get _value => super._value as _Coordinates;

  @override
  $Res call({
    Object x = freezed,
    Object y = freezed,
  }) {
    return _then(_Coordinates(
      x == freezed ? _value.x : x as int,
      y == freezed ? _value.y : y as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Coordinates extends _Coordinates {
  const _$_Coordinates(this.x, this.y)
      : assert(x != null),
        assert(y != null),
        super._();

  factory _$_Coordinates.fromJson(Map<String, dynamic> json) =>
      _$_$_CoordinatesFromJson(json);

  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'Coordinates(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Coordinates &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y);

  @JsonKey(ignore: true)
  @override
  _$CoordinatesCopyWith<_Coordinates> get copyWith =>
      __$CoordinatesCopyWithImpl<_Coordinates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CoordinatesToJson(this);
  }
}

abstract class _Coordinates extends Coordinates {
  const _Coordinates._() : super._();
  const factory _Coordinates(int x, int y) = _$_Coordinates;

  factory _Coordinates.fromJson(Map<String, dynamic> json) =
      _$_Coordinates.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$CoordinatesCopyWith<_Coordinates> get copyWith;
}
