import 'package:ecommerce_mobile_apps/page/cart_empty.dart';
import 'package:ecommerce_mobile_apps/page/checkout.dart';
import 'package:ecommerce_mobile_apps/page/order_placed.dart';
import 'package:ecommerce_mobile_apps/page/product.dart';
import 'package:flutter/material.dart';

import 'page/cart.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromHeight(49),
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFF8E6CEF)))),
      home: OrderPlaced(),
    );
  }
}
