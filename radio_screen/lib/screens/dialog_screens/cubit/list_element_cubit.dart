import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_screen/screens/dialog_screens/cubit/list_element_state.dart';

class ListElementCubit extends Cubit<ListElementState> {
  ListElementCubit() : super(ListElementState(isTaped: false));
  void tapping() {
    emit(ListElementState(isTaped: !state.isTaped));
  }

  void choosenElement(int index) {
    if (index == state.choosenElement) {
      emit(ListElementState(isTaped: state.isTaped, choosenElement: null));
    } else {
      emit(ListElementState(isTaped: state.isTaped, choosenElement: index));
    }
  }
}
