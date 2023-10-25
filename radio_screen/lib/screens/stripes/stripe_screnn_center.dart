import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/custom_widgets/stripes/concave_button.dart';
import 'package:radio_screen/custom_widgets/stripes/group_widget.dart';

class StripeCenter extends StatelessWidget {
  const StripeCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OneStripeGroupe(
          svg: "assets/image/electro.svg",
          name: "Repaire Generator",
          hp: "assets/image/full_stripe_hp.svg",
          textColor: AppConst().silverGredient,
        ),
        Padding(
          padding: EdgeInsets.only(top: AppConst.sdp(context, 12)),
          child: ConsaveButton(
            height: AppConst.sdp(context, 47),
            text: "Отмена",
            width: AppConst.sdp(context, 193),
          ),
        ),
      ],
    );
  }
}
