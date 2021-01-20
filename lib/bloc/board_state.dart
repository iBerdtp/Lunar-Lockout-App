part of 'board_bloc.dart';

abstract class BoardState extends Equatable {
  const BoardState();

  @override
  List<Object> get props => [];
}

class BoardInitial extends BoardState {}

class BoardUpdated extends BoardState {
  final Board board;

  BoardUpdated(this.board);

  @override
  List<Object> get props => [board];
}
