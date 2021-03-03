// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'piece.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Shuttle _$_$ShuttleFromJson(Map<String, dynamic> json) {
  return _$Shuttle(
    json['c'] == null
        ? null
        : Coordinates.fromJson(json['c'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$ShuttleToJson(_$Shuttle instance) => <String, dynamic>{
      'c': instance.c,
    };

_$Pawn _$_$PawnFromJson(Map<String, dynamic> json) {
  return _$Pawn(
    json['c'] == null
        ? null
        : Coordinates.fromJson(json['c'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$PawnToJson(_$Pawn instance) => <String, dynamic>{
      'c': instance.c,
    };
