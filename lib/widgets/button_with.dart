import 'package:flutter/material.dart';

import 'text.dart';

class ButtonWith extends StatelessWidget {
  const ButtonWith({super.key, required this.icon, required this.text});

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFF4F4F4), borderRadius: BorderRadius.circular(100)),
      child: ListTile(
        leading: Image.asset(
          icon,
          scale: 2,
        ),
        title: Row(
          children: [
            Expanded(
              child: Center(
                child: TextWidget(
                  text: text,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
