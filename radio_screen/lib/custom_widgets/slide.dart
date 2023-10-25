import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';

class Slide extends StatelessWidget {
  const Slide({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      thumbVisibility: true,
      trackVisibility: true,
      thickness: AppConst.sdp(context, 14),
      radius: Radius.circular(AppConst.sdp(context, 5)),
      trackRadius: Radius.circular(AppConst.sdp(context, 5)),
      trackColor: const Color(0xff230945),
      thumbColor: const Color(0xff904BE9),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView.separated(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: AppConst.sdp(context, 60)),
              child: child,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: AppConst.sdp(context, 20),
            );
          },
        ),
      ),
    );
  }
}
