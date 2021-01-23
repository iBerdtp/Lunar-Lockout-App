part of 'board_bloc.dart';

abstract class BoardEvent {
  const BoardEvent();
}

class MoveEvent extends BoardEvent {
  final Move move;

  const MoveEvent(this.move);
}

class RestartEvent extends BoardEvent {
  const RestartEvent();
}

class SelectEvent extends BoardEvent {
  final Coordinates c;

  const SelectEvent(this.c);
}
