import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lunar_lockout/application/game/game_bloc.dart';
import 'package:lunar_lockout/domain/game_logic/move.dart';

abstract class MoveButton extends StatelessWidget {
  final Move direction;
  final IconData iconData;

  const MoveButton(this.direction, this.iconData);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () =>
          BlocProvider.of<GameBloc>(context).add(MoveRequested(direction)),
      // TODO Theme colors
      backgroundColor: Colors.grey[800],
      foregroundColor: Colors.black,
      child: Icon(iconData),
    );
  }
}

class UpButton extends MoveButton {
  const UpButton() : super(Move.up, Icons.keyboard_arrow_up);
}

class DownButton extends MoveButton {
  const DownButton() : super(Move.down, Icons.keyboard_arrow_down);
}

class LeftButton extends MoveButton {
  const LeftButton() : super(Move.left, Icons.keyboard_arrow_left);
}

class RightButton extends MoveButton {
  const RightButton() : super(Move.right, Icons.keyboard_arrow_right);
}
