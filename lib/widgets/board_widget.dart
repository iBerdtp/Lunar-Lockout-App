import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lunar_lockout/bloc/board_bloc.dart';
import 'package:lunar_lockout/logic/board.dart';
import 'package:lunar_lockout/widgets/field_widget.dart';

class BoardWidget extends StatefulWidget {
  final Board board;
  final Stream<BoardEvent> eventStream;
  final Function closeStream;

  BoardWidget(
      {@required this.board,
      @required this.eventStream,
      @required this.closeStream});

  @override
  _BoardWidgetState createState() => _BoardWidgetState(
      board: board, eventStream: eventStream, closeStream: closeStream);
}

class _BoardWidgetState extends State<BoardWidget> {
  Board board;
  Stream<BoardEvent> eventStream;
  Function closeStream;

  _BoardWidgetState({this.board, this.eventStream, this.closeStream}) {
    eventStream.listen((event) {
      if (event is MoveEvent)
        setState(() => board.moveSelected(event.move));
      else
        setState(() => board.restart());
    });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          decoration: BoxDecoration(
              border: board.isWin()
                  ? Border.all(color: Color.fromRGBO(0, 255, 0, 1))
                  : null),
          child: Column(
            children: List.generate(
              board.dim,
              (y) => Expanded(
                child: Row(
                  children: List.generate(board.dim, (x) {
                    Coordinates c = Coordinates(x, y);
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(constraints.maxWidth / 85),
                        child: FieldWidget(
                          piece: board.getAt(c),
                          isGoal: board.isGoal(c),
                          select: () => setState(() => board.selected = c),
                          framed: board.selected == c,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    closeStream();
  }
}
