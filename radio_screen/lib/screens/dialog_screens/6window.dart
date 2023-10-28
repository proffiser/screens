import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/screens/dialog_screens/cubit/list_element_cubit.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/button.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/slider_gps.dart';

class SixthWindow extends StatelessWidget {
  const SixthWindow({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ListElementCubit>().state;
    return Padding(
      padding: EdgeInsets.all(AppConst.sdp(context, 60)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ОПГ",
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
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: AppConst.sdp(context, 596),
                width: AppConst.sdp(context, 740),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppConst.sdp(context, 30)),
                  color: const Color(0xff8649D4).withOpacity(0.3),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: AppConst.sdp(context, 28),
                      left: AppConst.sdp(context, 60),
                      right: AppConst.sdp(context, 60),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Название",
                          style: TextStyle(
                            fontSize: AppConst.sdp(context, 30),
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: AppConst.sdp(context, 40),
                        ),
                        Text(
                          "Город",
                          style: TextStyle(
                            fontSize: AppConst.sdp(context, 30),
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Расстояние",
                          style: TextStyle(
                            fontSize: AppConst.sdp(context, 30),
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: AppConst.sdp(context, 30),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: AppConst.sdp(context, 501),
                width: AppConst.sdp(context, 740),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppConst.sdp(context, 30)),
                  color: const Color(0xff8649D4).withOpacity(0.3),
                ),
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: Padding(
                    padding: EdgeInsets.all(AppConst.sdp(context, 28)),
                    child: SliderGps(
                      changeToRow: true,
                      itemsNames: const [
                        "Ak",
                        "Deagle",
                        "Pistols",
                        "Tomson",
                        "Mauser",
                        "M11",
                      ],
                      itemsLastField: const [
                        "22",
                        "34",
                        "400",
                        "500",
                        "22",
                        "34"
                      ],
                      itemsPrice: const ["22", "34", "400", "500", "22", "34"],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppConst.sdp(context, 20),
          ),
          Button(
            width: 360,
            doubleButton: true,
            disableButton: state.choosenElement == null,
            firstButtonText: "Закрыть",
            secondButtonText: "Выбрать",
          ),
        ],
      ),
    );
  }
}
