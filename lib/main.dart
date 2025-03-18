import 'package:ecommerce_mobile_apps/page/forgot_password.dart';
import 'package:ecommerce_mobile_apps/page/on_boarding.dart';
import 'package:ecommerce_mobile_apps/page/sign_in.dart';
import 'package:ecommerce_mobile_apps/page/sign_up.dart';
import 'package:ecommerce_mobile_apps/page/welcome.dart';
import 'package:flutter/material.dart';

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
      home: OnBoarding(),
    );
  }
}
