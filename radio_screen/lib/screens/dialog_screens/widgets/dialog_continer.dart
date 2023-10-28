import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';

class DialogContiner extends StatelessWidget {
  final Widget child;

  const DialogContiner({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppConst.sdp(context, 40)),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff350382),
            Color.fromARGB(255, 26, 3, 56),
            // Color(0xff7a3ace),
          ],
        ),
      ),
      child: child,
    );
  }
}
