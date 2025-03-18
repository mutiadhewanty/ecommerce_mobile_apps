import 'package:ecommerce_mobile_apps/page/forgot_password.dart';
import 'package:ecommerce_mobile_apps/page/sign_up.dart';
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
  bool _showPasswordInput = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
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
            if (_showPasswordInput)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _showPasswordInput = !_showPasswordInput;
                            });
                          },
                          child: Text('Continue'))),
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()));
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
                  )
                ],
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    height: 16,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Continue'))),
                  SizedBox(
                    height: 16,
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
                                        builder: (context) =>
                                            ForgotPassword()));
                              })
                      ])),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
