import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lunar_lockout/logic/board.dart';

part 'board_event.dart';
part 'board_state.dart';

class BoardBloc extends Bloc<BoardEvent, BoardState> {
  BoardBloc() : super(BoardInitial());

  @override
  Stream<BoardState> mapEventToState(BoardEvent event) async* {
    if (event is MoveEvent) {}
  }
}
