import 'package:bel_gomlaa/customer-sign-up.dart';
import 'package:bel_gomlaa/socials.dart';

import 'package:flutter/material.dart';
import 'dart:ui';

import 'custom_button.dart';
import 'custom_text_field.dart';

import 'homepage.dart';

class SignIn extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff58006D),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                'Welcome Back! ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 480,
              margin: EdgeInsets.only(top: 70),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 60),
                      CustomTextField(

                        hintText: 'Email',
                      ),
                      SizedBox(height: 25.0),
                      CustomTextField(
                        hintText: 'Password',
                      ),
                      SizedBox(height: 50),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage();
                              },
                            ),
                          );
                        },
                        child: CustomButton(
                          text: 'Sign In',
                        ),
                      ),
                      Row(
                        children: [
                      Socials(
                        icon: "assets/images/facebook-1.png",

                      ),
                          Socials(
                              icon: "assets/images/group-113.png",
                          )
                              ]
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 30),
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              color: Color(0xff58006D),
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return CustomerSignUp();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                '   CREATE NOW',
                                style: TextStyle(
                                  color: Color(0xff23002C),
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
