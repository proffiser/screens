import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_screen/button_animator.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/screens/cubit/volume/volume_cubit.dart';
import 'package:radio_screen/screens/cubit/volume/volume_state.dart';

class DownVolume extends StatelessWidget {
  const DownVolume({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonAnimator(
      childWidget: SizedBox(
        width: AppConst.sdp(context, 289),
        height: AppConst.sdp(context, 106),
        child: BlocBuilder<VolumeCubit, VolumeState>(
          builder: (context, state) {
            return ElevatedButton(
              onPressed: () {
                context.read<VolumeCubit>().decrese();
              },
              onLongPress: () {
                context.read<VolumeCubit>().decrese();
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(AppConst.sdp(context, 10)),
                ),
                backgroundColor: const Color(0x7fff5151),
                side: const BorderSide(
                  color: Color(0xffFF5252),
                  width: 0.5,
                ),
              ),
              child: SvgPicture.asset(
                "assets/image/-.svg",
                width: AppConst.sdp(context, 20),
                height: AppConst.sdp(context, 13),
              ),
            );
          },
        ),
      ),
    );
  }
}
