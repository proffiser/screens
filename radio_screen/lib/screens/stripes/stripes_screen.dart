import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/custom_widgets/stripes/group_widget.dart';

class StripeScreen extends StatelessWidget {
  const StripeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OneStripeGroupe(
          svg: "assets/image/full_heart.svg",
          name: "Maks Maks",
          hp: "assets/image/full_stripe_hp.svg",
          textColor: AppConst().redGredient,
        ),
        SizedBox(
          height: AppConst.sdp(context, 10),
        ),
        OneStripeGroupe(
          svg: "assets/image/full_heart.svg",
          name: "Maks Maks",
          hp: "assets/image/full_stripe_hp.svg",
          textColor: AppConst().silverGredient,
        ),
        SizedBox(
          height: AppConst.sdp(context, 10),
        ),
        OneStripeGroupe(
          svg: "assets/image/full_heart.svg",
          name: "Maks Maks",
          hp: "assets/image/full_stripe_hp.svg",
          textColor: AppConst().redGredient,
        ),
        SizedBox(
          height: AppConst.sdp(context, 10),
        ),
        OneStripeGroupe(
          svg: "assets/image/full_heart.svg",
          name: "Maks Maks",
          number: 5.toString(),
          textColor: AppConst().redGredient,
        ),
      ],
    );
  }
}
