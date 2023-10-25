// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:radio_screen/screens/stripes/stripe_screnn_center.dart';

double sdp(BuildContext context, double px) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  if (width < height) {
    return (px * 0.29166 / 300) * width;
  } else {
    return (px * 0.29166 / 300) * height;
  }
}

class RadioInterface extends StatelessWidget {
  const RadioInterface({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            bottom: sdp(context, 58),
            left: sdp(context, 60),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: StripeCenter()),
                ],
              ),
            ],
          ),
          //     const Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     Column(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: [StripeCenter()],
          //     ),
          //   ],
          // ),
        ),
        //  Align(alignment: Alignment.bottomLeft, child: MainButton())),
      ),
    );
  }
}
