import 'package:kt_dart/kt.dart';
import 'package:lunar_lockout/domain/game_logic/coordinates.dart';
import 'package:lunar_lockout/domain/game_logic/piece.dart';

KtList<Coordinates> ktListFromJson(List json) =>
    json.cast<Coordinates>().toImmutableList();
List jsonFromKtList(KtList list) => list.asList();

KtMap<Coordinates, Piece> ktMapFromJson(Map json) =>
    json.cast<Coordinates, Piece>().toImmutableMap();
Map jsonFromKtMap(KtMap map) => map.asMap();
