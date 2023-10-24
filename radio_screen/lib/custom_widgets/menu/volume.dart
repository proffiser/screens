import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_screen/const.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:radio_screen/screens/cubit/volume/volume_cubit.dart';
import 'package:radio_screen/screens/cubit/volume/volume_state.dart';

class Volume extends StatelessWidget {
  const Volume({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VolumeCubit, VolumeState>(
      builder: (context, state) {
        return Container(
          width: AppConst.sdp(context, 289),
          height: AppConst.sdp(context, 106),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0x826b32b1),
          ),
          child: Row(
            children: [
              Container(
                width: AppConst.sdp(context, 106),
                height: AppConst.sdp(context, 106),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0x826b32b1),
                ),
                child: Center(
                  child: Text(
                    "${state.volume}%",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: AppConst.sdp(context, 16),
              ),
              GestureDetector(
                onTap: () {
                  context.read<VolumeCubit>().mute();
                },
                child: Row(
                  children: [
                    state.isMute
                        ? SvgPicture.asset(
                            "assets/image/bx.svg",
                            height: AppConst.sdp(context, 51),
                            width: AppConst.sdp(context, 46),
                          )
                        : SvgPicture.asset(
                            "assets/image/bx_green.svg",
                            height: AppConst.sdp(context, 51),
                            width: AppConst.sdp(context, 46),
                          ),
                    SizedBox(
                      width: AppConst.sdp(context, 17),
                    ),
                    state.isMute
                        ? Text(
                            "Выкл.",
                            style: TextStyle(
                              fontSize: AppConst.sdp(context, 28),
                              color: const Color(0xffFF5252),
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        : Text(
                            "Вкл.",
                            style: TextStyle(
                              fontSize: AppConst.sdp(context, 28),
                              color: const Color(0xff9EFF52),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
