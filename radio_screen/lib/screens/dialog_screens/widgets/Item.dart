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
    this.width,
    this.playerOnServer = false,
    this.id,
  });
  final bool changeToRaw;
  final String text;
  final String? naming;
  final String? number;
  final bool isTaped;
  final double? width;
  final bool playerOnServer;
  final int? id;
  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  @override
  Widget build(BuildContext context) {
    return ButtonAnimator(
      childWidget: Container(
        width: widget.width != null
            ? AppConst.sdp(context, widget.width!)
            : AppConst.sdp(context, 1000),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: AppConst.sdp(context, 36),
                      ),
                      Visibility(
                        visible: widget.playerOnServer,
                        child: SizedBox(
                          width: AppConst.sdp(context, 80),
                          child: Text(
                            widget.id.toString(),
                            style: TextStyle(
                              fontFamily: "Norm",
                              fontSize: AppConst.sdp(context, 30),
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: widget.playerOnServer,
                        child: SizedBox(
                          width: AppConst.sdp(context, 40),
                        ),
                      ),
                      SizedBox(
                        width: widget.playerOnServer
                            ? AppConst.sdp(context, 410)
                            : AppConst.sdp(context, 443),
                        child: Text(
                          widget.text,
                          style: TextStyle(
                            fontFamily: "Norm",
                            fontSize: AppConst.sdp(context, 30),
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: AppConst.sdp(context, 80),
                      ),
                      SizedBox(
                        width: widget.playerOnServer
                            ? AppConst.sdp(context, 160)
                            : AppConst.sdp(context, 177),
                        child: Text(
                          widget.naming!,
                          style: TextStyle(
                            fontFamily: "Norm",
                            fontSize: AppConst.sdp(context, 30),
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: AppConst.sdp(context, 80),
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
