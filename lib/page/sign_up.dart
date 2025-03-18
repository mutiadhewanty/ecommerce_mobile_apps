import 'package:ecommerce_mobile_apps/widgets/text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'forgot_password.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
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
                text: 'Create Account',
                fontSize: 32,
                fontWeight: FontWeight.bold),
            SizedBox(
              height: 32,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Firstname',
                  filled: true,
                  fillColor: Color(0xFFF4F4F4),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(4))),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Lastname',
                  filled: true,
                  fillColor: Color(0xFFF4F4F4),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(4))),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'Email Address',
                  filled: true,
                  fillColor: Color(0xFFF4F4F4),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(4))),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Color(0xFFF4F4F4),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(4))),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                width: double.infinity,
                child:
                    ElevatedButton(onPressed: () {}, child: Text('Continue'))),
            SizedBox(
              height: 40,
            ),
            RichText(
                text: TextSpan(
                    text: 'Forgot Password?',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    children: [
                  TextSpan(
                      text: ' Reset',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()));
                        })
                ])),
          ],
        ),
      ),
    );
  }
}
