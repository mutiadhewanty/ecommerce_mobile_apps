import 'package:ecommerce_mobile_apps/widgets/text.dart';
import 'package:flutter/material.dart';

class OrderPlaced extends StatefulWidget {
  const OrderPlaced({super.key});

  @override
  State<OrderPlaced> createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8E6CEF),
      body: Column(
        children: [
          SizedBox(
            height: 154,
          ),
          Image.asset("assets/order_placed.png"),
          Spacer(),
          Container(
              width: double.infinity,
              height: 370,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 85),
                      child: TextWidget(
                          text: "Order Placed Successfully",
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextWidget(
                        text: "You will recieve an email confirmation",
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400),
                    SizedBox(
                      height: 78,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("See Order details")),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
