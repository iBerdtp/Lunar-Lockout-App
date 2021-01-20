import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lunar_lockout/bloc/board_bloc.dart';
import 'package:lunar_lockout/logic/board.dart';

abstract class MoveButton extends StatelessWidget {
  final StreamSink<BoardEvent> moveStreamSink;
  final Move direction;
  final IconData iconData;

  MoveButton(this.moveStreamSink, this.direction, this.iconData);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(iconData),
      // TODO: triggers infinite loop
      onPressed: () {
        moveStreamSink.add(MoveEvent(direction));
      },
      backgroundColor: Colors.grey[800],
      foregroundColor: Colors.black,
    );
  }
}

class UpButton extends MoveButton {
  UpButton({@required StreamSink moveStreamSink})
      : super(moveStreamSink, Move.up, Icons.keyboard_arrow_up);
}

class DownButton extends MoveButton {
  DownButton({@required StreamSink moveStreamSink})
      : super(moveStreamSink, Move.down, Icons.keyboard_arrow_down);
}

class LeftButton extends MoveButton {
  LeftButton({@required StreamSink moveStreamSink})
      : super(moveStreamSink, Move.left, Icons.keyboard_arrow_left);
}

class RightButton extends MoveButton {
  RightButton({@required StreamSink moveStreamSink})
      : super(moveStreamSink, Move.right, Icons.keyboard_arrow_right);
}
