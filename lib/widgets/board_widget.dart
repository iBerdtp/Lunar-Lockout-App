import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lunar_lockout/bloc/board_bloc.dart';
import 'package:lunar_lockout/logic/board.dart';
import 'package:lunar_lockout/widgets/field_widget.dart';

class BoardWidget extends StatelessWidget {
  BoardWidget();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BoardBloc, BoardState>(
      listener: (context, state) {
        if (state is IllegalMove)
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
      },
      builder: (context, state) {
        return buildBoard(state.board);
      },
      buildWhen: (previous, current) => !(current is IllegalMove),
    );
  }

  Widget buildBoard(Board board) {
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
                          select: () => BlocProvider.of<BoardBloc>(context)
                              .add(SelectEvent(c)),
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
}
