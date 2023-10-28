import 'package:flutter/material.dart';
import 'package:radio_screen/button_animator.dart';
import 'package:radio_screen/const.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.width,
    required this.doubleButton,
    required this.firstButtonText,
    this.secondButtonText,
    this.disableButton = false,
  });
  final double width;
  final bool doubleButton;
  final String firstButtonText;
  final String? secondButtonText;
  final bool disableButton;
  @override
  Widget build(BuildContext context) {
    return doubleButton
        ? Row(
            children: [
              ButtonAnimator(
                onTap: () {},
                childWidget: Container(
                  height: AppConst.sdp(context, 84),
                  width: AppConst.sdp(context, width),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff7138B8),
                    ),
                    borderRadius:
                        BorderRadius.circular(AppConst.sdp(context, 76)),
                  ),
                  child: Center(
                    child: Text(
                      firstButtonText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: AppConst.sdp(context, 30),
                        fontFamily: 'TTNorms',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: AppConst.sdp(context, 30),
              ),
              IgnorePointer(
                ignoring: disableButton,
                child: ButtonAnimator(
                  childWidget: Container(
                    height: AppConst.sdp(context, 84),
                    width: AppConst.sdp(context, width),
                    decoration: BoxDecoration(
                      color: disableButton
                          ? const Color(0xff8748d4).withOpacity(0.3)
                          : const Color.fromARGB(133, 90, 29, 188),
                      borderRadius:
                          BorderRadius.circular(AppConst.sdp(context, 76)),
                    ),
                    child: Center(
                      child: Text(
                        secondButtonText!,
                        style: TextStyle(
                          color: disableButton
                              ? Colors.white.withOpacity(0.3)
                              : Colors.white,
                          fontFamily: "Norm",
                          fontSize: AppConst.sdp(context, 30),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        : Container(
            height: AppConst.sdp(context, 84),
            width: AppConst.sdp(context, width),
            decoration: BoxDecoration(
              color: const Color.fromARGB(133, 90, 29, 188),
              borderRadius: BorderRadius.circular(AppConst.sdp(context, 76)),
            ),
            child: Center(
              child: Text(
                firstButtonText,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Norm",
                  fontSize: AppConst.sdp(context, 30),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
  }
}
