import 'package:flutter/material.dart';
import 'package:radio_screen/button_animator.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/custom_widgets/slide.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/button.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/gredient_textfield.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/Item.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/slider_gps.dart';

class ThirdWindow extends StatelessWidget {
  const ThirdWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(AppConst.sdp(context, 60)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "GPS Navigator",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Norm",
                fontSize: AppConst.sdp(context, 48),
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: AppConst.sdp(context, 20),
            ),
            Container(
              height: AppConst.sdp(context, 547),
              width: AppConst.sdp(context, 740),
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppConst.sdp(context, 30)),
                  color: Color(0xff8649D4).withOpacity(0.3)),
              child: Padding(
                  padding: EdgeInsets.all(AppConst.sdp(context, 28)),
                  child: SliderGps(
                    itemsNames: [
                      "Ближайшее место аренды мопеда",
                      "Ближайший паркомат",
                      "Ближайший бизнес",
                      "Ближайшая заправка",
                      "Ближайший банкомат"
                    ],
                  )),
            ),
            SizedBox(
              height: AppConst.sdp(context, 20),
            ),
            const Button(
              width: 360,
              doubleButton: true,
              firstButtonText: "Закрыть",
              secondButtonText: "Выбрать",
              disableButton: true,
            )
          ],
        ));
  }
}
