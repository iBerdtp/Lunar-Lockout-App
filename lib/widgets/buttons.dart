import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lunar_lockout/bloc/board_bloc.dart';
import 'package:lunar_lockout/logic/board.dart';

abstract class MoveButton extends StatelessWidget {
  final Move direction;
  final IconData iconData;

  MoveButton(this.direction, this.iconData);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(iconData),
      onPressed: () =>
          BlocProvider.of<BoardBloc>(context).add(MoveEvent(direction)),
      backgroundColor: Colors.grey[800],
      foregroundColor: Colors.black,
    );
  }
}

class UpButton extends MoveButton {
  UpButton() : super(Move.up, Icons.keyboard_arrow_up);
}

class DownButton extends MoveButton {
  DownButton() : super(Move.down, Icons.keyboard_arrow_down);
}

class LeftButton extends MoveButton {
  LeftButton() : super(Move.left, Icons.keyboard_arrow_left);
}

class RightButton extends MoveButton {
  RightButton() : super(Move.right, Icons.keyboard_arrow_right);
}
