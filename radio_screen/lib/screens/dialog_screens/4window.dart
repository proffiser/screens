import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/button.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  TextEditingController textEditingController = TextEditingController();

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
              color: const Color(0xff7138B8).withOpacity(0.5),
              borderRadius: BorderRadius.circular(AppConst.sdp(context, 20)),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextField(
                obscureText: true,
                controller: textEditingController,
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
                    bottom: AppConst.sdp(context, 40),
                  ),
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
          SizedBox(
            height: AppConst.sdp(context, 40),
          ),
          Button(
            width: 390,
            doubleButton: true,
            disableButton: textEditingController.text.isEmpty,
            firstButtonText: "Отмена",
            secondButtonText: "Войти",
          ),
        ],
      ),
    );
  }
}
