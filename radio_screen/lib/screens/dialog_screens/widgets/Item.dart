import 'package:flutter/material.dart';
import 'package:radio_screen/button_animator.dart';
import 'package:radio_screen/const.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.changeToRaw,
    required this.text,
    this.naming,
    this.number,
  });
  final bool changeToRaw;
  final String text;
  final String? naming;
  final String? number;

  @override
  Widget build(BuildContext context) {
    return ButtonAnimator(
      childWidget: Container(
        width: AppConst.sdp(context, 796),
        height: AppConst.sdp(context, 85),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConst.sdp(context, 10)),
          color: Color(0xff8649D4).withOpacity(0.25),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: AppConst.sdp(context, 36),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: changeToRaw
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                          fontFamily: "Norm",
                          fontSize: AppConst.sdp(context, 30),
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: AppConst.sdp(context, 40),
                      ),
                      Text(
                        naming!,
                        style: TextStyle(
                          fontFamily: "Norm",
                          fontSize: AppConst.sdp(context, 30),
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        number!,
                        style: TextStyle(
                          fontFamily: "Norm",
                          fontSize: AppConst.sdp(context, 30),
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: AppConst.sdp(context, 30),
                      ),
                    ],
                  )
                : Text(
                    text,
                    style: TextStyle(
                      fontFamily: "Norm",
                      fontSize: AppConst.sdp(context, 30),
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
