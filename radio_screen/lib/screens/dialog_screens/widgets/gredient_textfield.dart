import 'package:flutter/material.dart';

class Gradienttextfield extends StatefulWidget {
  const Gradienttextfield({
    Key? key,
    required this.height,
    required this.width,
    required this.colors,
    required this.text,
    this.radius,
    required this.controller,
    this.fontColor,
    this.fontWeight,
    this.fontSize,
  }) : super(key: key);

  final double? height;
  final double? width;
  final List<Color> colors;
  final String? text;
  final double? radius;
  final TextEditingController? controller;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  _GradienttextfieldState createState() => _GradienttextfieldState();
}

class _GradienttextfieldState extends State<Gradienttextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0),
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: widget.colors,
          ),
          borderRadius: BorderRadius.circular(widget.radius ?? 20.0),
        ),
        child: TextField(
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.text,
            hintStyle: TextStyle(
              color: widget.fontColor ?? Colors.black,
              fontSize: widget.fontSize ?? 18,
              fontWeight: widget.fontWeight ?? FontWeight.bold,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
          ),
        ),
      ),
    );
  }
}
