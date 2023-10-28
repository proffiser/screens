import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_screen/button_animator.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/screens/dialog_screens/cubit/list_element_cubit.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/button.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/slider_gps.dart';

class PlayersOnServer extends StatelessWidget {
  const PlayersOnServer({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ListElementCubit>().state;
    return Padding(
      padding: EdgeInsets.all(AppConst.sdp(context, 60)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: AppConst.sdp(context, 700),
                child: Text(
                  "Игроков на сервере",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Norm",
                    fontSize: AppConst.sdp(context, 48),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                "Игроков на сервере: 350",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Norm",
                  fontSize: AppConst.sdp(context, 30),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: AppConst.sdp(context, 54),
              ),
              ButtonAnimator(
                childWidget: Container(
                  height: AppConst.sdp(context, 96),
                  width: AppConst.sdp(context, 96),
                  decoration: BoxDecoration(
                      color: const Color(0xff8649D4).withOpacity(0.3),
                      borderRadius:
                          BorderRadius.circular(AppConst.sdp(context, 59))),
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: AppConst.sdp(context, 20),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: AppConst.sdp(context, 596),
                width: AppConst.sdp(context, 1200),
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
                        // SizedBox(
                        //   width:
                        //       AppConst.sdp(context, AppConst.sdp(context, 0)),
                        // ),
                        Text(
                          "id",
                          style: TextStyle(
                            fontSize: AppConst.sdp(context, 30),
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: AppConst.sdp(context, 350),
                          child: Text(
                            "name",
                            style: TextStyle(
                              fontSize: AppConst.sdp(context, 30),
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: AppConst.sdp(context, 100),
                          child: Text(
                            "score",
                            style: TextStyle(
                              fontSize: AppConst.sdp(context, 30),
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "ping",
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
                width: AppConst.sdp(context, 1200),
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
                    child: const SliderGps(
                      playerOnServer: true,
                      width: 1200,
                      changeToRow: true,
                      itemsNames: [
                        "Ak",
                        "Deagle",
                        "Pistols",
                        "Tomson",
                        "Mauser",
                        "M11",
                      ],
                      itemsLastField: ["22", "34", "400", "500", "22", "34"],
                      itemsPrice: ["22", "34", "400", "500", "22", "34"],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
