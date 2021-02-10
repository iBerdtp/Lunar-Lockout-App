import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lunar_lockout/bloc/board_bloc.dart';
import 'package:lunar_lockout/logic/board.dart';
import 'package:lunar_lockout/presentation/board_widget.dart';
import 'package:lunar_lockout/presentation/button_pad.dart';

void main() async {
  // Board board = await Board.fromPuz(fileName: "moeilijk");
  Board board = Board.empty()
    ..setAt(Coordinates(0, 0), 2)
    ..setAt(Coordinates(2, 0), 2)
    ..setAt(Coordinates(4, 0), 2)
    ..setAt(Coordinates(4, 3), 2)
    ..setAt(Coordinates(1, 4), 1);
  runApp(MaterialApp(
    title: "Lunar Lockout",
    home: BlocProvider(
      create: (context) => BoardBloc(board),
      child: GamePage(board: board),
    ),
  ));
}

class GamePage extends StatelessWidget {
  static const double padding = 10;
  final Board board;

  GamePage({@required this.board});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Lunar Lockout"),
        actions: [
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () =>
                  BlocProvider.of<BoardBloc>(context).add(RestartEvent()))
        ],
      ),
      body: Column(
        children: [
          Flexible(
            flex: 6,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: BoardWidget(),
            ),
          ),
          Flexible(flex: 4, child: ButtonPadWidget()),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
