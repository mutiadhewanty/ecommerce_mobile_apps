import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../widgets/button_with.dart';
import '../widgets/text.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final bool _showPasswordInput = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 123,
            ),
            TextWidget(
              text: "Sign In",
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 32,
            ),
            TextField(
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
            SizedBox(
                width: double.infinity,
                child:
                    ElevatedButton(onPressed: () {}, child: Text('Continue'))),
            SizedBox(
              height: 16,
            ),
            RichText(
                text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    children: [
                  TextSpan(
                      text: ' Create One',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // navigate to desired screen
                        })
                ])),
            SizedBox(
              height: 71,
            ),
            ButtonWith(
              icon: 'assets/apple_icon.png',
              text: 'Continue With Apple',
            ),
            SizedBox(
              height: 12,
            ),
            ButtonWith(
              icon: 'assets/google_icon.png',
              text: 'Continue With Google',
            ),
            SizedBox(
              height: 12,
            ),
            ButtonWith(
              icon: 'assets/fb_icon.png',
              text: 'Continue With Facebook',
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
