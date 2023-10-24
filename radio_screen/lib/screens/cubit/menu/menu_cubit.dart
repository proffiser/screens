import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_screen/screens/cubit/menu/menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(NotExpandMenu());
  expand() {
    emit(ExpandMenu());
  }

  notExpand() {
    emit(NotExpandMenu());
  }

  search() {
    emit(SearchMenu());
  }
}
