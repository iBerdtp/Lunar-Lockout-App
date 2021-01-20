import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lunar_lockout/bloc/board_bloc.dart';
import 'package:lunar_lockout/logic/board.dart';
import 'package:lunar_lockout/widgets/board_widget.dart';
import 'package:lunar_lockout/widgets/button_pad.dart';

void main() async {
  // Board board = await Board.fromPuz(fileName: "moeilijk");
  Board board = Board.empty()
    ..setAt(Coordinates(0, 0), 2)
    ..setAt(Coordinates(2, 0), 2)
    ..setAt(Coordinates(4, 0), 2)
    ..setAt(Coordinates(4, 3), 2)
    ..setAt(Coordinates(1, 4), 1);
  runApp(GamePage(board: board));
}

class GamePage extends StatelessWidget {
  final StreamController<BoardEvent> eventStreamContoller;
  static const double padding = 10;
  final Board board;

  GamePage({
    @required this.board,
  }) : this.eventStreamContoller = StreamController<BoardEvent>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lunar Lockout"),
          actions: [
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () => eventStreamContoller.sink.add(RestartEvent()))
          ],
        ),
        body: Column(
          children: [
            Flexible(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: BoardWidget(
                  board: board,
                  eventStream: eventStreamContoller.stream,
                  closeStream: () => eventStreamContoller.close(),
                ),
              ),
            ),
            Flexible(
                flex: 4,
                child: ButtonPadWidget(
                    eventStreamSink: eventStreamContoller.sink)),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
