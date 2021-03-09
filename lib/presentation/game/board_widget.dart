import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lunar_lockout/application/game/game_bloc.dart';
import 'package:lunar_lockout/domain/game_logic/board.dart';
import 'package:lunar_lockout/domain/game_logic/coordinates.dart';
import 'package:lunar_lockout/presentation/game/field_widget.dart';

class BoardWidget extends StatelessWidget {
  const BoardWidget();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GameBloc, GameState>(
      listener: (context, state) {
        state.map(
          gameOn: (s) => s.moveFailureOption.fold(
            () => null,
            (moveFailure) => FlushbarHelper.createError(
              message: moveFailure.map(
                noPieceToMove: (_) => "There is no piece at the selected field",
                pieceCantMove: (f) => "The selected piece can't move ${f.move}",
                noPieceSelected: (_) =>
                    "No piece selected, tap one of the pieces",
              ),
            ),
          ),
          gameOver: (_) =>
              FlushbarHelper.createSuccess(message: "You done diddly doed it"),
          noGame: (_) {}, // TODO ILLEGAL
        );
      },
      builder: (context, state) {
        return state.map(
          gameOn: (s) => buildBoard(s.board, s.selectedOption, isWin: false),
          gameOver: (s) => buildBoard(s.board, none(), isWin: true),
          noGame: (_) => const Text("NO GAME AVAILABLE"), // TODO ILLEGAL
        );
      },
    );
  }

  Widget buildBoard(
    Board board,
    Option<Coordinates> selectedOption, {
    @required bool isWin,
  }) {
    return AspectRatio(
      aspectRatio: 1,
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          decoration: BoxDecoration(
              border: isWin
                  ? Border.all(color: const Color.fromRGBO(0, 255, 0, 1))
                  : null),
          child: Column(
            children: List.generate(
              board.arrayDim,
              (y) => Expanded(
                child: Row(
                  children: List.generate(board.arrayDim, (x) {
                    final Coordinates c = Coordinates(x, y);
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(constraints.maxWidth / 85),
                        child: FieldWidget(
                          piece: board.getAt(c),
                          isGoal: board.isGoal(c),
                          select: () => BlocProvider.of<GameBloc>(context)
                              .add(SelectRequested(c)),
                          framed: selectedOption.fold(
                            () => false,
                            (selected) => c == selected,
                          ),
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
}
