import 'package:flutter/material.dart';

import '../widgets/text.dart';

class CartEmpty extends StatefulWidget {
  const CartEmpty({super.key});

  @override
  State<CartEmpty> createState() => _CartEmptyState();
}

class _CartEmptyState extends State<CartEmpty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/cart.png'),
                    SizedBox(
                      height: 16,
                    ),
                    TextWidget(
                        text: "Your Cart is Empty",
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                    SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: Text("Explore Categories"))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
