import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.fontWeight,
      this.align,
      this.textDecoration,
      this.color});

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign? align;
  final TextDecoration? textDecoration;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: textDecoration),
    );
  }
}
