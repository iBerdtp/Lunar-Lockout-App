part of 'board_bloc.dart';

abstract class BoardEvent extends Equatable {
  const BoardEvent();

  @override
  List<Object> get props => [];
}

class MoveEvent extends BoardEvent {
  final Move move;

  MoveEvent(this.move);

  @override
  List<Object> get props => [move];
}

class RestartEvent extends BoardEvent {}
