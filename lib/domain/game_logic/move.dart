class Move {
  final int dX;
  final int dY;
  final String _name;

  static const Move up = Move._(0, -1, "up");
  static const Move left = Move._(-1, 0, "left");
  static const Move down = Move._(0, 1, "down");
  static const Move right = Move._(1, 0, "right");

  const Move._(this.dX, this.dY, this._name);

  @override
  String toString() => _name;
}
