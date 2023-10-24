import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:radio_screen/button_animator.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/screens/cubit/volume/volume_cubit.dart';
import 'package:radio_screen/screens/cubit/volume/volume_state.dart';

class UpVolume extends StatelessWidget {
  const UpVolume({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonAnimator(
      childWidget: BlocBuilder<VolumeCubit, VolumeState>(
        builder: (context, state) {
          return SizedBox(
            width: AppConst.sdp(context, 289),
            height: AppConst.sdp(context, 106),
            child: ElevatedButton(
              onPressed: () {
                context.read<VolumeCubit>().increase();
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(AppConst.sdp(context, 10)),
                ),
                backgroundColor: const Color(0x7f9eff51),
                side: const BorderSide(
                  color: Color(0xff9EFF52),
                  width: 0.5,
                ),
              ),
              child: SvgPicture.asset(
                "assets/image/+.svg",
                width: AppConst.sdp(context, 47),
                height: AppConst.sdp(context, 47),
              ),
            ),
          );
        },
      ),
    );
  }
}
