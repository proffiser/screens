import 'package:flutter/material.dart';
import 'package:radio_screen/screens/dialog_screens/6window.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/dialog_continer.dart';

class DialogScreens extends StatelessWidget {
  const DialogScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DialogContiner(
          child: SixthWindow(),
        ),
      ],
    );
  }
}
