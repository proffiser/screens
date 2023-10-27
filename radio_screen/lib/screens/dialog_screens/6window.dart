import 'package:flutter/material.dart';
import 'package:radio_screen/button_animator.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/custom_widgets/slide.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/button.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/gredient_textfield.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/Item.dart';

class SixthWindow extends StatelessWidget {
  const SixthWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(AppConst.sdp(context, 60)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ОПГ",
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
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: AppConst.sdp(context, 596),
                  width: AppConst.sdp(context, 740),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppConst.sdp(context, 30)),
                      color: Color(0xff8649D4).withOpacity(0.3)),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: AppConst.sdp(context, 28),
                          left: AppConst.sdp(context, 60),
                          right: AppConst.sdp(context, 60)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Название",
                            style: TextStyle(
                              fontSize: AppConst.sdp(context, 30),
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: AppConst.sdp(context, 40),
                          ),
                          Text(
                            "Город",
                            style: TextStyle(
                              fontSize: AppConst.sdp(context, 30),
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Расстояние",
                            style: TextStyle(
                              fontSize: AppConst.sdp(context, 30),
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: AppConst.sdp(context, 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: AppConst.sdp(context, 501),
                  width: AppConst.sdp(context, 740),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppConst.sdp(context, 30)),
                      color: Color(0xff8649D4).withOpacity(0.3)),
                  child: Padding(
                    padding: EdgeInsets.all(AppConst.sdp(context, 28)),
                    child: Slide(
                        child: Item(
                      changeToRaw: true,
                      text: "emty",
                      naming: "5000м",
                      number: "5000",
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppConst.sdp(context, 20),
            ),
            const Button(
              width: 360,
              doubleButton: true,
              firstButtonText: "Закрыть",
              secondButtonText: "Выбрать",
            )
          ],
        ));
  }
}
