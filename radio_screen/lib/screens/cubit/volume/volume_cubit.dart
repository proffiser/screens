import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_screen/screens/cubit/volume/volume_state.dart';

class VolumeCubit extends Cubit<VolumeState> {
  VolumeCubit() : super(VolumeState(volume: 50, isMute: false));
  void increase() {
    emit(VolumeState(volume: ++state.volume, isMute: state.isMute));
  }

  void decrese() {
    emit(VolumeState(volume: --state.volume, isMute: state.isMute));
  }

  void mute() {
    emit(VolumeState(volume: state.volume, isMute: !state.isMute));
  }
}
