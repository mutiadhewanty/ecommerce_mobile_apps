import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.fontWeight,
      this.align});

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
