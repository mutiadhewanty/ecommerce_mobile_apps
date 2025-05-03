import 'package:ecommerce_mobile_apps/widgets/text.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(100)),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 13,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F4F4),
                      borderRadius: BorderRadius.circular(100)),
                  child: Image.asset('assets/fav_icon.png')),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 248,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    children: [
                      Image.asset('assets/product_detail.png'),
                      SizedBox(width: 10),
                      Image.asset('assets/product_detail1.png'),
                      SizedBox(width: 10),
                      Image.asset('assets/product_detail2.png'),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24),
                    TextWidget(
                        text: 'Men\'s Harrington Jacket',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    SizedBox(height: 15),
                    TextWidget(
                        text: '148',
                        color: Color(0xFF8E6CEF),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    SizedBox(height: 33),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) {
                              return Container(
                                height: 400,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(24))),
                                child: Column(
                                  children: [
                                    SizedBox(height: 24),
                                    TextWidget(
                                        text: 'Size',
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                    SizedBox(height: 24),
                                    Expanded(
                                      child: ListView.builder(
                                          itemCount: 5,
                                          itemBuilder:
                                              (BuildContext context, index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 24.0),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 56,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF4F4F4),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 18,
                                                          horizontal: 34),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          TextWidget(
                                                              text:
                                                                  'Size ${index + 1}',
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                  )
                                                ],
                                              ),
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFFF4F4F4),
                            borderRadius: BorderRadius.circular(100)),
                        child: Row(
                          children: [
                            SizedBox(width: 16),
                            TextWidget(
                                text: "Size",
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                            Spacer(),
                            TextWidget(
                                text: "S",
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            SizedBox(width: 30),
                            Image.asset('assets/arrow_down_icon.png'),
                            SizedBox(width: 22),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) {
                              return Container(
                                height: 400,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(24))),
                                child: Column(
                                  children: [
                                    SizedBox(height: 24),
                                    TextWidget(
                                        text: 'Color',
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                    SizedBox(height: 24),
                                    Expanded(
                                      child: ListView.builder(
                                          itemCount: 5,
                                          itemBuilder:
                                              (BuildContext context, index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 24.0),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 56,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF4F4F4),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 18,
                                                          horizontal: 34),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          TextWidget(
                                                              text:
                                                                  'Color ${index + 1}',
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                          Container(
                                                            height: 16,
                                                            width: 16,
                                                            decoration: BoxDecoration(
                                                                color: Color(
                                                                    0xFF8E6CEF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                  )
                                                ],
                                              ),
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFFF4F4F4),
                            borderRadius: BorderRadius.circular(100)),
                        child: Row(
                          children: [
                            SizedBox(width: 16),
                            TextWidget(
                                text: "Color",
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                            Spacer(),
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                  color: Color(0xFF8E6CEF),
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            SizedBox(width: 30),
                            Image.asset('assets/arrow_down_icon.png'),
                            SizedBox(width: 22),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 56,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFFF4F4F4),
                          borderRadius: BorderRadius.circular(100)),
                      child: Row(
                        children: [
                          SizedBox(width: 16),
                          TextWidget(
                              text: "Quantity",
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          Spacer(),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xFF8E6CEF),
                                borderRadius: BorderRadius.circular(100)),
                            child: Image.asset('assets/plus_icon.png'),
                          ),
                          SizedBox(width: 23),
                          TextWidget(
                              text: "1",
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          SizedBox(width: 23),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xFF8E6CEF),
                                borderRadius: BorderRadius.circular(100)),
                            child: Image.asset('assets/min_icon.png'),
                          ),
                          SizedBox(width: 22),
                        ],
                      ),
                    ),
                    SizedBox(height: 26),
                    TextWidget(
                        text:
                            'Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.',
                        fontSize: 12,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400),
                    SizedBox(height: 24),
                    TextWidget(
                        text: 'Shiping & Returns',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    SizedBox(height: 12),
                    TextWidget(
                        text: 'Free standard shipping and free 60-day returns',
                        fontSize: 12,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400),
                    SizedBox(height: 24),
                    TextWidget(
                        text: 'Reviews',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    SizedBox(height: 12),
                    TextWidget(
                        text: '4.5 Ratings',
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                    SizedBox(height: 12),
                    TextWidget(
                        text: '213 Reviews',
                        fontSize: 12,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400),
                    SizedBox(height: 16),
                    ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFF4F4F4),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Icon(Icons.person),
                                    ),
                                    SizedBox(width: 12),
                                    TextWidget(
                                        text: 'John Doe',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                    Spacer(),
                                    Row(children: [
                                      for (int i = 0; i < 5; i++)
                                        if (i < 3)
                                          Icon(Icons.star_rounded,
                                              color: Color(0xFF8E6CEF),
                                              size: 16)
                                        else
                                          Icon(Icons.star_rounded,
                                              color: Color(0xFFF4F4F4),
                                              size: 16)
                                    ]),
                                  ],
                                ),
                                SizedBox(height: 4),
                                TextWidget(
                                    text:
                                        'Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.',
                                    fontSize: 12,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w400),
                              ],
                            ),
                          );
                        }),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 16.0),
                child: SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF8E6CEF),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                              text: "\$50.00",
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          TextWidget(
                              text: "Add to bag",
                              fontSize: 16,
                              fontWeight: FontWeight.w500)
                        ],
                      )),
                ),
              ),
            )
          ],
        ));
  }
}
