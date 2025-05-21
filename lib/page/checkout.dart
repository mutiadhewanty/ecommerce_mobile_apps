import 'package:flutter/material.dart';

import '../widgets/text.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: TextWidget(
          text: 'Checkout',
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
              height: 40,
            ),
            Container(
              height: 72,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: "Shipping Address",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        TextWidget(
                            text: "Add Shipping Address",
                            fontSize: 16,
                            fontWeight: FontWeight.w500)
                      ],
                    ),
                    Image.asset('assets/arrow_right_icon.png')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 72,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: "Payment Method",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        TextWidget(
                            text: "Add Payment Method",
                            fontSize: 16,
                            fontWeight: FontWeight.w500)
                      ],
                    ),
                    Image.asset('assets/arrow_right_icon.png')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 258,
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
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                              text: '\$49.99',
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          TextWidget(
                              text: "Place Order",
                              fontSize: 16,
                              fontWeight: FontWeight.w400)
                        ],
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
