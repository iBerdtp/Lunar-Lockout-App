import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:lunar_lockout/bloc/board_bloc.dart';
import 'package:lunar_lockout/injection.dart';
import 'package:lunar_lockout/logic/board.dart';
import 'package:lunar_lockout/presentation/board_widget.dart';
import 'package:lunar_lockout/presentation/button_pad.dart';
import 'package:lunar_lockout/presentation/core/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(AppWidget());
}

class GamePage extends StatelessWidget {
  static const double padding = 10;
  final Board board;

  GamePage({@required this.board});

  @override
  Widget build(BuildContext context) {
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
