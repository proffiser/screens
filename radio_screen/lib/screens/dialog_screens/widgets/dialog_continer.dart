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
        color: Color.fromRGBO(32, 13, 58, 0.95),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConst.sdp(context, 40)),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.05, 0.45],
            colors: [
              Color.fromRGBO(112, 0, 255, 0.3),
              Color.fromRGBO(112, 0, 255, 0),
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
