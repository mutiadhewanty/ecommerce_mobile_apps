import 'package:ecommerce_mobile_apps/page/sign_in.dart';
import 'package:flutter/material.dart';

import '../widgets/text.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool _resetPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            if (_resetPassword)
              Column(
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
                      text: 'Forgot Password',
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                  SizedBox(
                    height: 35,
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
                    height: 24,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _resetPassword = !_resetPassword;
                            });
                          },
                          child: Text('Continue'))),
                ],
              )
            else
              Builder(builder: (BuildContext context) {
                return Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/reset_password.png'),
                      SizedBox(
                        height: 24,
                      ),
                      TextWidget(
                        text: "We Sent you an Email to reset your password.",
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        align: TextAlign.center,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          },
                          child: Text("Return to Login"))
                    ],
                  ),
                );
              })
          ],
        ),
      ),
    );
  }
}
