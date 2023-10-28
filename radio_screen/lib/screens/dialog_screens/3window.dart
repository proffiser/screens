import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/screens/dialog_screens/cubit/list_element_cubit.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/button.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/slider_gps.dart';

class ThirdWindow extends StatelessWidget {
  const ThirdWindow({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ListElementCubit>().state;
    return Padding(
      padding: EdgeInsets.all(AppConst.sdp(context, 60)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "GPS Navigator",
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
          Container(
            height: AppConst.sdp(context, 547),
            width: AppConst.sdp(context, 740),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppConst.sdp(context, 30)),
              color: const Color(0xff8649D4).withOpacity(0.3),
            ),
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: Padding(
                padding: EdgeInsets.all(AppConst.sdp(context, 28)),
                child: const SliderGps(
                  changeToRow: false,
                  itemsNames: [
                    "Ближайшее место аренды мопеда",
                    "Ближайший паркомат",
                    "Ближайший бизнес",
                    "Ближайшая заправка",
                    "Ближайший банкомат",
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: AppConst.sdp(context, 20),
          ),
          Button(
            width: 360,
            doubleButton: true,
            firstButtonText: "Закрыть",
            secondButtonText: "Выбрать",
            disableButton: state.choosenElement == null,
          ),
        ],
      ),
    );
  }
}
