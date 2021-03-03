import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lunar_lockout/domain/game_logic/move.dart';

part 'coordinates.freezed.dart';
part 'coordinates.g.dart';

@freezed
abstract class Coordinates implements _$Coordinates {
  const factory Coordinates(int x, int y) = _Coordinates;
  const Coordinates._();
  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);

  Coordinates add(Move m) {
    return Coordinates(x + m.dX, y + m.dY);
  }

  Coordinates sub(Move m) {
    return Coordinates(x - m.dX, y - m.dY);
  }

  static Coordinates min(Coordinates a, Coordinates b) {
    if (a.y > b.y) {
      return a;
    } else if (a.y < b.y) {
      return b;
    } else if (a.x > b.x) {
      return a;
    } else {
      return b;
    }
  }
}
