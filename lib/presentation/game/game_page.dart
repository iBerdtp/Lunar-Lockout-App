import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lunar_lockout/application/game/game_bloc.dart';
import 'package:lunar_lockout/domain/game_logic/game.dart';
import 'package:lunar_lockout/presentation/game/board_widget.dart';
import 'package:lunar_lockout/presentation/game/button_pad.dart';

class GamePage extends StatelessWidget {
  const GamePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lunar Lockout"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => BlocProvider.of<GameBloc>(context)
                .add(const RestartRequested()),
          )
        ],
      ),
      body: Column(
        children: const [
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
