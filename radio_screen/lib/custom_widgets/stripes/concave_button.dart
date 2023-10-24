import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';

class ConsaveButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  const ConsaveButton(
      {super.key,
      required this.height,
      required this.width,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xa5121212),
              ),
            ),
            Container(
              width: width - 10,
              height: height - 16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xff8f8f8f), Color(0x00252525)],
                ),
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: AppConst.sdp(context, 22),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
