import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/button.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/gredient_textfield.dart';

class SecondWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppConst.sdp(context, 60)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Настройки безопасности",
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
            """Если ваш аккаунт зарегестрирован через почту -
вы можете сменить пароль в настройках лаунчера""",
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
          Gradienttextfield(
            radius: AppConst.sdp(context, 20),
            height: AppConst.sdp(context, 100),
            colors: const [Colors.red, Colors.black],
            text: "Enter Name",
            fontColor: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.normal,
            controller: null,
            width: AppConst.sdp(context, 800),
          ),
          SizedBox(
            height: AppConst.sdp(context, 40),
          ),
          const Button(
            width: 390,
            doubleButton: true,
            firstButtonText: "Закрыть",
            secondButtonText: "Отправить",
          )
        ],
      ),
    );
  }
}
