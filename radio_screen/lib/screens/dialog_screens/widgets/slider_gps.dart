import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/Item.dart';

class SliderGps extends StatelessWidget {
  const SliderGps({super.key, required this.itemsNames});
  final List<String> itemsNames;
  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      thumbVisibility: true,
      trackVisibility: true,
      thickness: AppConst.sdp(context, 14),
      radius: Radius.circular(AppConst.sdp(context, 5)),
      trackRadius: Radius.circular(AppConst.sdp(context, 5)),
      trackColor: const Color(0xff8649D4).withOpacity(0.3),
      thumbColor: const Color(0xff904BE9),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView.separated(
          itemCount: itemsNames.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: AppConst.sdp(context, 24)),
              child: Item(
                changeToRaw: false,
                text: itemsNames[index],
              ),
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
