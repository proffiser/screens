import 'package:flutter/material.dart';
import 'package:radio_screen/button_animator.dart';
import 'package:radio_screen/const.dart';

class Item extends StatefulWidget {
  const Item({
    super.key,
    required this.changeToRaw,
    required this.text,
    this.naming,
    this.number,
    this.isTaped = false,
  });
  final bool changeToRaw;
  final String text;
  final String? naming;
  final String? number;
  final bool isTaped;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  @override
  Widget build(BuildContext context) {
    return ButtonAnimator(
      childWidget: Container(
        width: AppConst.sdp(context, 796),
        height: AppConst.sdp(context, 85),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConst.sdp(context, 10)),
          color:
              widget.isTaped ? null : const Color(0xff8649D4).withOpacity(0.25),
          gradient: widget.isTaped
              ? LinearGradient(
                  colors: [
                    const Color(0xff7138B8),
                    const Color(0xff7138B8).withOpacity(0.45),
                  ],
                )
              : null,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: AppConst.sdp(context, 36),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: widget.changeToRaw
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.text,
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
                        widget.naming!,
                        style: TextStyle(
                          fontFamily: "Norm",
                          fontSize: AppConst.sdp(context, 30),
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.number!,
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
                    widget.text,
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
