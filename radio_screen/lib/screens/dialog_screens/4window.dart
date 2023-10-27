import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/button.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/gredient_textfield.dart';

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppConst.sdp(context, 60)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ошибка",
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
          Text(
            """Ты указал неверный пароль! 
Укажи пароль от аккаунта в окошке ниже.""",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Norm",
              fontSize: AppConst.sdp(context, 30),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: AppConst.sdp(context, 40),
          ),
          Container(
            height: AppConst.sdp(context, 100),
            width: AppConst.sdp(context, 800),
            decoration: BoxDecoration(
                color: Color(0xff7138B8).withOpacity(0.5),
                borderRadius: BorderRadius.circular(AppConst.sdp(context, 20))),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontFamily: "Norm",
                  fontSize: AppConst.sdp(context, 30),
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                      left: AppConst.sdp(context, 35),
                      bottom: AppConst.sdp(context, 40)),
                  border: InputBorder.none,
                  hintText: "Введите пароль",
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontFamily: "Norm",
                    fontSize: AppConst.sdp(context, 30),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          // Gradienttextfield(
          //   radius: AppConst.sdp(context, 20),
          //   height: AppConst.sdp(context, 100),
          //   colors: const [Color(0xff7138B873)],
          //   fontColor: Colors.black,
          //   fontSize: 15,
          //   fontWeight: FontWeight.normal,
          //   controller: null,
          //   width: AppConst.sdp(context, 800),
          //   text: 'Введите паорль',
          // ),
          SizedBox(
            height: AppConst.sdp(context, 40),
          ),
          const Button(
            width: 390,
            doubleButton: true,
            firstButtonText: "Отмена",
            secondButtonText: "Войти",
          )
        ],
      ),
    );
  }
}
