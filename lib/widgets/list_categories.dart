import 'package:flutter/material.dart';

import 'text.dart';

class ListCategories extends StatelessWidget {
  const ListCategories({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 64,
        decoration: BoxDecoration(
            color: Color(0xFFF4F4F4), borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              SizedBox(height: 40, width: 40, child: Image.asset(image)),
              SizedBox(width: 16),
              TextWidget(
                  text: title, fontSize: 16, fontWeight: FontWeight.w400),
            ],
          ),
        ));
  }
}
