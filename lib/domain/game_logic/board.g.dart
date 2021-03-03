// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Board _$BoardFromJson(Map<String, dynamic> json) {
  return Board(
    arrayDim: json['arrayDim'] as int,
    pieces: ktMapFromJson(json['pieces'] as Map),
    goals: ktListFromJson(json['goals'] as List),
    inactiveFields: ktListFromJson(json['inactiveFields'] as List),
  );
}

Map<String, dynamic> _$BoardToJson(Board instance) => <String, dynamic>{
      'arrayDim': instance.arrayDim,
      'pieces': jsonFromKtMap(instance.pieces),
      'goals': jsonFromKtList(instance.goals),
      'inactiveFields': jsonFromKtList(instance.inactiveFields),
    };
