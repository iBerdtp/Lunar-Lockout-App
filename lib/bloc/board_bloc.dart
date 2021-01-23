import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lunar_lockout/logic/board.dart';

part 'board_event.dart';
part 'board_state.dart';

class BoardBloc extends Bloc<BoardEvent, BoardState> {
  Board board;

  BoardBloc(this.board) : super(BoardUpdated(board));

  @override
  Stream<BoardState> mapEventToState(
    BoardEvent event,
  ) async* {
    if (event is MoveEvent) {
      int moveResult = board.moveSelected(event.move);
      if (moveResult == 0) {
        yield BoardUpdated(board);
      } else if (moveResult == 1)
        yield IllegalMove("The selected piece can't move ${event.move}", board);
      else if (moveResult == 2)
        yield IllegalMove("No piece selected, tap a piece first", board);
    }
    if (event is RestartEvent) {
      board.restart();
      yield BoardUpdated(board);
    }
    if (event is SelectEvent) {
      board.select(event.c);
      yield BoardUpdated(board);
    }
  }
}
