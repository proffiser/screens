import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/custom_widgets/menu/button_down_v.dart';
import 'package:radio_screen/custom_widgets/menu/button_up_v.dart';
import 'package:radio_screen/custom_widgets/menu/volume.dart';

class VolumeMenu extends StatefulWidget {
  VolumeMenu({super.key, required this.expand});
  bool expand;
  @override
  State<VolumeMenu> createState() => _VolumeMenuState();
}

class _VolumeMenuState extends State<VolumeMenu> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: AppConst.sdp(context, 367),
        height: widget.expand
            ? AppConst.sdp(context, 700)
            : AppConst.sdp(context, 454),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [Color(0x637031c0), Color(0x388439e3)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: AppConst.sdp(context, 34),
            ),
            const UpVolume(),
            SizedBox(
              height: AppConst.sdp(context, 34),
            ),
            const DownVolume(),
            SizedBox(
              height: AppConst.sdp(context, 34),
            ),
            const Volume(),
          ],
        ),
      ),
    );
  }
}
