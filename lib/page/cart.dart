import 'package:ecommerce_mobile_apps/widgets/text.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: TextWidget(
          text: 'Cart',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Color(0xFFF4F4F4),
                borderRadius: BorderRadius.circular(100)),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 13,
            ),
          ),
        ),
        centerTitle: true, // Center the title
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 34,
            ),
            Row(
              children: [
                Spacer(),
                TextWidget(
                    text: 'Remove All ',
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                // padding: EdgeInsets.only(bottom: 16),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFFF4F4F4),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: Image.asset(
                              'assets/product_detail.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                    text: 'Men\'s Harrington Jacket',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: 'Size',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Colors.black.withOpacity(0.5),
                                          )),
                                      TextSpan(
                                          text: ' - M',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          )),
                                    ])),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: 'Color',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Colors.black.withOpacity(0.5),
                                          )),
                                      TextSpan(
                                          text: ' - Lemon',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          )),
                                    ])),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Column(
                            children: [
                              SizedBox(
                                height: 14,
                              ),
                              TextWidget(
                                  text: '\$ 49.99',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF8E6CEF),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Image.asset('assets/plus_icon.png'),
                                  ),
                                  SizedBox(width: 8),
                                  TextWidget(
                                      text: "1",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  SizedBox(width: 8),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF8E6CEF),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Image.asset('assets/min_icon.png'),
                                  ),
                                  SizedBox(width: 22),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
            SizedBox(
              height: 170,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Subtotal",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
                TextWidget(
                    text: '\$ 49.99',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Shipping cost",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
                TextWidget(
                    text: '\$ 49.99',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Tax",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
                TextWidget(
                    text: '\$ 49.99',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Total",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
                TextWidget(
                    text: '\$ 49.99',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ],
            ),
            SizedBox(
              height: 31,
            ),
            Container(
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/discount_icon.png'),
                    SizedBox(
                      width: 16,
                    ),
                    TextWidget(
                      text: 'Enter Coupon Code',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45,
                    ),
                    Spacer(),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFF8E6CEF),
                          borderRadius: BorderRadius.circular(100)),
                      child: Image.asset('assets/white_right_arrow.png'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 54,
            ),
            SizedBox(
                width: double.infinity,
                child:
                    ElevatedButton(onPressed: () {}, child: Text("Checkout")))
          ],
        ),
      ),
    );
  }
}
