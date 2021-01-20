import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lunar_lockout/bloc/board_bloc.dart';
import 'package:lunar_lockout/widgets/buttons.dart';

class ButtonPadWidget extends StatelessWidget {
  final StreamSink<BoardEvent> eventStreamSink;

  ButtonPadWidget({@required this.eventStreamSink});

  // TODO: calling constructors for buttons in loop?

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        UpButton(
          moveStreamSink: eventStreamSink,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: LeftButton(
                moveStreamSink: eventStreamSink,
              ),
            ),
            Expanded(
              child: RightButton(
                moveStreamSink: eventStreamSink,
              ),
            )
          ],
        ),
        DownButton(
          moveStreamSink: eventStreamSink,
        )
      ],
    );
  }
}
