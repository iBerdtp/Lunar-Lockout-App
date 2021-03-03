import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lunar_lockout/application/game/game_bloc.dart';
import 'package:lunar_lockout/domain/game_logic/coordinates.dart';
import 'package:lunar_lockout/presentation/game/field_widget.dart';

class BoardWidget extends StatelessWidget {
  const BoardWidget();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GameBloc, GameState>(
      listener: (context, state) {
        state.moveFailure.fold(
          () {},
          (failure) => FlushbarHelper.createError(
            message: failure.map(
              noPieceToMove: (_) => "No piece in selected spot",
              pieceCantMove: (f) => "Selected piece can't move ${f.move}",
              noPieceSelected: (_) => "Tap a piece on the board first",
            ),
          ),
        );
        if (state.isWin) {
          FlushbarHelper.createSuccess(message: "You done diddly doed it");
        }
      },
      builder: (context, state) {
        return buildBoard(state);
      },
    );
  }

  Widget buildBoard(GameState s) {
    return AspectRatio(
      aspectRatio: 1,
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          decoration: BoxDecoration(
              border: s.isWin
                  ? Border.all(color: const Color.fromRGBO(0, 255, 0, 1))
                  : null),
          child: Column(
            children: List.generate(
              s.board.arrayDim,
              (y) => Expanded(
                child: Row(
                  children: List.generate(s.board.arrayDim, (x) {
                    final Coordinates c = Coordinates(x, y);
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(constraints.maxWidth / 85),
                        child: FieldWidget(
                          piece: s.board.getAt(c),
                          isGoal: s.board.isGoal(c),
                          select: () => BlocProvider.of<GameBloc>(context)
                              .add(SelectRequested(c)),
                          framed: s.selected.fold(
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
