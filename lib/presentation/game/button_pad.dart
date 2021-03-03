import 'package:flutter/material.dart';
import 'package:lunar_lockout/presentation/game/buttons.dart';

class ButtonPadWidget extends StatelessWidget {
  const ButtonPadWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const UpButton(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(
              child: LeftButton(),
            ),
            Expanded(
              child: RightButton(),
            )
          ],
        ),
        const DownButton()
      ],
    );
  }
}
