import 'package:flutter/material.dart';

import '../widgets/text.dart';

class ShopByCategories2 extends StatefulWidget {
  const ShopByCategories2({super.key});

  @override
  State<ShopByCategories2> createState() => _ShopByCategories2State();
}

class _ShopByCategories2State extends State<ShopByCategories2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 63,
            ),
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
                text: 'Hoodies (240)',
                fontSize: 16,
                fontWeight: FontWeight.bold),
            SizedBox(
              height: 14,
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                padding: EdgeInsets.only(bottom: 16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 items per row
                  crossAxisSpacing: 16, // spacing between columns
                  mainAxisSpacing: 16, // spacing between rows
                  childAspectRatio: 0.6, // aspect ratio of each item
                ),
                itemBuilder: (context, index) {
                  double gridWidth =
                      (MediaQuery.of(context).size.width - 16) / 2;
                  return Stack(
                    children: [
                      Container(
                          height: 281,
                          width: gridWidth,
                          decoration: BoxDecoration(
                            color: Color(0xFFF4F4F4),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(children: [
                            Container(
                              height: gridWidth * (220 / (gridWidth)),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8)),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/hoodies_cat.png'),
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  TextWidget(
                                      text: "Fleece Skate Hoodie",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                  SizedBox(height: 8),
                                  TextWidget(
                                      text: "\$110.00",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ],
                              ),
                            ),
                          ])),
                      Positioned(
                          right: 14,
                          top: 9,
                          child: Image.asset('assets/heart.png'))
                    ],
                  );
                })
          ],
        ),
      ),
    ));
  }
}
