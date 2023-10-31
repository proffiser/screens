import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/button.dart';

class SecondWindow extends StatefulWidget {
  const SecondWindow({super.key});

  @override
  State<SecondWindow> createState() => _SecondWindowState();
}

class _SecondWindowState extends State<SecondWindow> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppConst.sdp(context, 60)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Форма заполнения",
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
            """Для отправки формы ответьте на вопрос""",
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
            child: TextField(
              textAlign: TextAlign.left,
              controller: textEditingController,
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontFamily: "Norm",
                fontSize: AppConst.sdp(context, 30),
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: AppConst.sdp(context, 35),
                  vertical: AppConst.sdp(context, 70) / 2,
                ),
                border: InputBorder.none,
                hintText: "Ваш ответ",
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontFamily: "Norm",
                  fontSize: AppConst.sdp(context, 30),
                  fontWeight: FontWeight.w500,
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
            firstButtonText: "Закрыть",
            secondButtonText: "Отправить",
          ),
        ],
      ),
    );
  }
}
