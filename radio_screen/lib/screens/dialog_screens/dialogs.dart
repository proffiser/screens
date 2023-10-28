import 'package:flutter/material.dart';
import 'package:radio_screen/screens/dialog_screens/2window.dart';
import 'package:radio_screen/screens/dialog_screens/3window.dart';
import 'package:radio_screen/screens/dialog_screens/4window.dart';
import 'package:radio_screen/screens/dialog_screens/5window.dart';
import 'package:radio_screen/screens/dialog_screens/6window.dart';
import 'package:radio_screen/screens/dialog_screens/players_on_server.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/dialog_continer.dart';

class DialogScreens extends StatelessWidget {
  const DialogScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DialogContiner(
          child: SecondWindow(),
        ),
      ],
    );
  }
}
