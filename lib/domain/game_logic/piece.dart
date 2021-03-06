import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lunar_lockout/domain/game_logic/coordinates.dart';

part 'piece.freezed.dart';
part 'piece.g.dart';

@freezed
abstract class Piece with _$Piece {
  const factory Piece.shuttle() = Shuttle;
  const factory Piece.pawn() = Pawn;
  factory Piece.fromJson(Map<String, dynamic> json) => _$PieceFromJson(json);
}
