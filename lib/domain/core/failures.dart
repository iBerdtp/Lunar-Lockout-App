import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lunar_lockout/domain/game_logic/board.dart';
import 'package:lunar_lockout/domain/game_logic/coordinates.dart';
import 'package:lunar_lockout/domain/game_logic/move.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    @required T failedValue,
  }) = ShortPassword<T>;
}

@freezed
abstract class MoveFailure with _$MoveFailure {
  // const factory BoardFailure.pieceInInactiveField({
  //   @required Board invalidBoard,
  // }) = PieceInInactiveField;
  // const factory BoardFailure.pieceOutOfBounds({
  //   @required Board invalidBoard,
  // }) = PieceOutOfBounds;
  const factory MoveFailure.noPieceToMove({
    @required Coordinates coordinates,
  }) = NoPieceToMove;
  const factory MoveFailure.pieceCantMove({
    @required Coordinates coordinates,
    @required Move move,
  }) = PieceCantMove;
  const factory MoveFailure.noPieceSelected() = NoPieceSelected;
}
