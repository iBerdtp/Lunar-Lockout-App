import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:lunar_lockout/domain/game_logic/piece.dart';

class FieldWidget extends StatelessWidget {
  final Option<Piece> piece;
  final bool isGoal;
  final void Function() select;
  final bool framed;

  const FieldWidget({
    @required this.piece,
    @required this.isGoal,
    @required this.select,
    this.framed = false,
  });

  Color _getColor(Piece p) {
    if (p is Shuttle) {
      return const Color.fromRGBO(0, 0, 255, 1);
    } else {
      return const Color.fromRGBO(0, 255, 0, 1);
    }
  }

  //TODO: Make the whole field tappable instead of just the piece on the field

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: isGoal ? const Color.fromRGBO(255, 0, 0, 1) : Colors.grey[900],
        border: framed ? Border.all(color: Colors.yellow) : null,
      ),
      child: piece.fold(
        () => null,
        (p) => GestureDetector(
          onTap: () => select(),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _getColor(p),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
