import 'dart:core';

import 'package:flutter/material.dart';

class AppConst {
  static double sdp(BuildContext context, double px) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    if (width < height) {
      return (px * 0.29166 / 300) * width;
    } else {
      return (px * 0.29166 / 300) * height;
    }
  }

  ///////////////
  List<Color> purpleButton = [const Color(0xff6e34b7), const Color(0x00723ab8)];
  List<Color> redButton = [const Color(0xffb83535), const Color(0xff682323)];
  List<Color> silverGredient = [
    const Color(0xffc5c5c5),
    const Color(0xffffffff),
    const Color(0xff9c9c9c),
  ];
  List<Color> redGredient = [
    const Color(0xff690707),
    const Color(0xffC62929),
    const Color(0xff380404),
  ];
  /////////////
}
