import 'package:flutter/foundation.dart';
import 'package:lunar_lockout/logic/board.dart';

final int empty = 0;
final int shuttle = 1;
final int pawn = 2;

List<List<T>> deepCopy<T>(List<List<T>> original) {
  return List.generate(original.length, (index) => List.from(original[index]));
  // TODO: See below: DelegatingList
}

bool deepEquals<T>(List<List<T>> one, List<List<T>> two) {
  if (one.length != two.length) return false;
  for (int i = 0; i < one.length; i++)
    if (!listEquals(one[i], two[i])) return false;
  return true;
}

Coordinates getFirstPiece(List<List<int>> grid) {
  for (int y = 0; y < grid.length; y++)
    for (int x = 0; x < grid[y].length; x++)
      if (grid[x][y] > 0) return Coordinates(x, y);
  return null;
}

extension cascadePrint on bool {
  String s() {
    return "s";
  }

  bool pr([String name = "bool"]) {
    print("$name: $this");
    return this;
  }
}

/*
I'd like to do:
  class Matrix<T> extends List<List<T>> {
    ........
    Matrix<T> deepCopy() {
      ........
    }
    ........
  }
But this doesn't seem possible without overriding like 58 methods. Not being able to do this
isn't really a problem, but it would be nicer to have deepCopy as a method of some class,
so that you can have an instance m of it and use it like: m.deepCopy() instead of having to do deepCopy(m)
*/
