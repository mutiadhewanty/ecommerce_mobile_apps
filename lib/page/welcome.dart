import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF8E6CEF),
        body: Center(
          child: Image.asset('assets/logo.png'),
        ),
      ),
    );
  }
}
