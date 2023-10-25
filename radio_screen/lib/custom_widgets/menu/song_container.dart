import 'package:flutter/material.dart';
import 'package:radio_screen/button_animator.dart';
import 'package:radio_screen/const.dart';

class SongContainer extends StatelessWidget {
  final List<Color> color;
  final String text;

  const SongContainer({super.key, required this.color, required this.text});
  @override
  Widget build(BuildContext context) {
    return ButtonAnimator(
      childWidget: Container(
        width: AppConst.sdp(context, 918),
        height: AppConst.sdp(context, 81),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConst.sdp(context, 10)),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: color,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: AppConst.sdp(context, 70),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Akrobat',
                fontSize: AppConst.sdp(context, 40),
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
