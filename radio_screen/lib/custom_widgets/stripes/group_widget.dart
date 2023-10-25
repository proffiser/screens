import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/custom_widgets/gredient_text.dart';

class OneStripeGroupe extends StatelessWidget {
  OneStripeGroupe({
    super.key,
    required this.svg,
    required this.name,
    this.hp,
    required this.textColor,
    this.number,
  });
  final String svg;
  final String name;
  String? hp;
  final List<Color> textColor;
  String? number;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          svg,
          height: AppConst.sdp(context, 70),
        ),
        Padding(
          padding: EdgeInsets.only(left: AppConst.sdp(context, 20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              hp != null
                  ? GradientText(
                      name,
                      style: TextStyle(
                        fontSize: AppConst.sdp(context, 27),
                        fontWeight: FontWeight.w700,
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: textColor),
                    )
                  : const SizedBox.shrink(),
              hp != null
                  ? SvgPicture.asset(
                      hp!,
                      height: AppConst.sdp(context, 29),
                      width: AppConst.sdp(context, 256),
                    )
                  : GradientText(
                      number!,
                      style: TextStyle(
                        fontSize: AppConst.sdp(context, 59),
                        fontWeight: FontWeight.w700,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: textColor,
                      ),
                    ),
            ],
          ),
        )
      ],
    );
  }
}
