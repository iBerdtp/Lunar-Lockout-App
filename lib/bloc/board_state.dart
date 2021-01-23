part of 'board_bloc.dart';

abstract class BoardState {
  final Board board;

  const BoardState(this.board);
}

class BoardUpdated extends BoardState {
  const BoardUpdated(board) : super(board);
}

class IllegalMove extends BoardState {
  final String message;

  const IllegalMove(this.message, board) : super(board);
}
