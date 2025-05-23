import 'package:flutter/material.dart';

import 'text.dart';

class SettingList extends StatelessWidget {
  const SettingList({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: text,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            Image.asset('assets/arrow_right_icon.png')
          ],
        ),
      ),
    );
  }
}
