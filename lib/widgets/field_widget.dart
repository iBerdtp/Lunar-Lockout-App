import 'package:flutter/material.dart';
import 'package:lunar_lockout/logic/util.dart';

class FieldWidget extends StatelessWidget {
  final int piece;
  final bool isGoal;
  final void Function() select;
  final bool framed;

  static Map<int, Color> colorMap = {
    shuttle: Color.fromRGBO(0, 0, 255, 1),
    pawn: Color.fromRGBO(0, 255, 0, 1)
  };

  FieldWidget(
      {@required this.piece,
      @required this.isGoal,
      @required this.select,
      this.framed = false});

  //TODO: Make the whole field tappable instead of just the piece on the field

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isGoal ? Color.fromRGBO(255, 0, 0, 1) : Colors.grey[900],
          border: framed ? Border.all(color: Colors.yellow) : null),
      child: piece == empty
          ? null
          : GestureDetector(
              onTap: () => select(),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorMap[piece],
                  ),
                ),
              ),
            ),
    );
  }
}
