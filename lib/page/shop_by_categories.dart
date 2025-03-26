import 'package:flutter/material.dart';

import '../widgets/list_categories.dart';
import '../widgets/text.dart';

class ShopByCategories extends StatelessWidget {
  const ShopByCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 63),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(100)),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextWidget(
                text: 'Shop By Categories',
                fontSize: 24,
                fontWeight: FontWeight.bold),
            SizedBox(
              height: 14,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  ListCategories(image: 'assets/hoodies.png', title: 'Hoodies'),
                  SizedBox(
                    height: 8,
                  ),
                  ListCategories(image: 'assets/shorts.png', title: 'Shorts'),
                  SizedBox(
                    height: 8,
                  ),
                  ListCategories(image: 'assets/shoes.png', title: 'Shoes'),
                  SizedBox(
                    height: 8,
                  ),
                  ListCategories(image: 'assets/bag.png', title: 'Bag'),
                  SizedBox(
                    height: 8,
                  ),
                  ListCategories(
                      image: 'assets/accessories.png', title: 'Accessories'),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
