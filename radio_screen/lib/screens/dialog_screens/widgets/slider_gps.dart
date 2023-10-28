import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/screens/dialog_screens/cubit/list_element_cubit.dart';
import 'package:radio_screen/screens/dialog_screens/cubit/list_element_state.dart';
import 'package:radio_screen/screens/dialog_screens/widgets/Item.dart';

class SliderGps extends StatefulWidget {
  const SliderGps(
      {super.key,
      required this.itemsNames,
      this.itemsPrice,
      this.itemsLastField,
      required this.changeToRow,
      this.width,
      this.playerOnServer});
  final List<String> itemsNames;
  final List<String>? itemsPrice;
  final List<String>? itemsLastField;
  final bool changeToRow;
  final double? width;
  final bool? playerOnServer;
  @override
  State<SliderGps> createState() => _SliderGpsState();
}

class _SliderGpsState extends State<SliderGps> {
  bool isTap = false;

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
        child: BlocBuilder<ListElementCubit, ListElementState>(
          builder: (context, state) {
            return ListView.separated(
              itemCount: widget.itemsNames.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: AppConst.sdp(context, 24)),
                  child: GestureDetector(
                    onTap: () {
                      context.read<ListElementCubit>().choosenElement(index);
                    },
                    child: Item(
                      id: index + 1,
                      width: widget.width,
                      changeToRaw: widget.changeToRow,
                      playerOnServer: widget.playerOnServer,
                      text: widget.itemsNames[index],
                      isTaped: index == state.choosenElement ? true : false,
                      naming: widget.itemsLastField![index],
                      number: widget.itemsPrice![index],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: AppConst.sdp(context, 20),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
