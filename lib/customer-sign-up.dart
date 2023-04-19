import 'package:flutter/material.dart';
import  'dart:ui';

import 'custom_button.dart';
import 'custom_text_field.dart';

import 'homepage.dart';


class CustomerSignUp extends StatelessWidget {
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
                'Let\'s Get Started! ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 660,
              margin: EdgeInsets.only(top: 90),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Form(
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        CustomTextField(
                          hintText: 'Username',
                        ),
                        SizedBox(height: 25.0),
                        CustomTextField(
                          hintText: 'Email',
                        ),
                        SizedBox(height: 25.0),
                        CustomTextField(
                          hintText: 'Password',

                        ),
                        SizedBox(height: 25.0),
                        CustomTextField(
                          hintText: 'Confirm Passowrd',
                        ),

                        SizedBox(height: 25.0),
                        CustomTextField(
                          hintText: 'Mobile Number',
                        ),
                        SizedBox(height: 25.0),
                        CustomTextField(
                          hintText: 'Address',
                        ),
                        SizedBox(height: 50),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)
                        {
                          return HomePage();
                        },
                        ),
                        );
                      },
                        child: CustomButton(
                          text: 'Sign Up',
                        ),
                    ),
                      ],
                    )

                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
