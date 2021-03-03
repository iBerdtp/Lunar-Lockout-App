import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'package:lunar_lockout/domain/game_logic/coordinates.dart';
import 'package:lunar_lockout/domain/game_logic/kt_json_conversion.dart';
import 'package:lunar_lockout/domain/game_logic/piece.dart';

part 'board.g.dart';

@JsonSerializable()
class Board {
  final int arrayDim;
  @JsonKey(fromJson: ktMapFromJson, toJson: jsonFromKtMap)
  final KtMap<Coordinates, Piece> pieces;
  @JsonKey(fromJson: ktListFromJson, toJson: jsonFromKtList)
  final KtList<Coordinates> goals;
  @JsonKey(fromJson: ktListFromJson, toJson: jsonFromKtList)
  final KtList<Coordinates> inactiveFields;

  const Board({
    @required this.arrayDim,
    @required this.pieces,
    @required this.goals,
    @required this.inactiveFields,
  });

  const Board.emptySquare(int arrayDim)
      : this(
          arrayDim: arrayDim,
          pieces: const KtMap.empty(),
          goals: const KtList.empty(),
          inactiveFields: const KtList.empty(),
        );

  Board setAt(Coordinates c, Piece p) {
    assert(c != null);
    assert(p != null);
    assert(isWithinBounds(c));
    assert(!inactiveFields.contains(c));
    return alter(
      (map) => map[c] = p,
    );
  }

  Board removeAt(Coordinates c) {
    assert(c != null);
    return alter(
      (map) => map.remove(c),
    );
  }

  Board move(Coordinates from, Coordinates to) {
    assert(from != null);
    assert(to != null);
    assert(pieces.containsKey(from));
    return alter(
      (map) {
        map[to] = map[from];
        map.remove(from);
      },
    );
  }

  Board alter(void Function(Map<Coordinates, Piece>) f) {
    final map = pieces.asMap();
    f(map);
    return copyWith(pieces: KtMap.from(map));
  }

  Option<Piece> getAt(Coordinates c) {
    assert(c.x >= 0 && c.x < arrayDim && c.y >= 0 && c.y < arrayDim);
    assert(inactiveFields.contains(c));
    assert(c != null);
    return optionOf(pieces.get(c));
  }

  bool isGoal(Coordinates c) {
    return goals.contains(c);
  }

  Option<Coordinates> getFirstPiece() {
    assert(pieces != null);
    if (pieces.isEmpty()) {
      return none();
    } else {
      final coordinates = pieces.keys.iterator();
      Coordinates currentBest = coordinates.next();
      while (coordinates.hasNext()) {
        currentBest = Coordinates.min(currentBest, coordinates.next());
      }
      return some(currentBest);
    }
  }

  Board copyWith({
    int arrayDim,
    KtMap<Coordinates, Piece> pieces,
    KtList<Coordinates> goals,
    KtList<Coordinates> inactiveFields,
  }) {
    return Board(
      arrayDim: arrayDim ?? this.arrayDim,
      pieces: pieces ?? this.pieces,
      goals: goals ?? this.goals,
      inactiveFields: inactiveFields ?? this.inactiveFields,
    );
  }

  bool isWithinBounds(Coordinates c) =>
      c.x >= 0 && c.x < arrayDim && c.y >= 0 && c.y < arrayDim;
}
