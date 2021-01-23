import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lunar_lockout/bloc/board_bloc.dart';
import 'package:lunar_lockout/widgets/buttons.dart';

class ButtonPadWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        UpButton(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: LeftButton(),
            ),
            Expanded(
              child: RightButton(),
            )
          ],
        ),
        DownButton()
      ],
    );
  }
}
