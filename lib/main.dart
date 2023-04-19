



import 'package:bel_gomlaa/sign-in.dart';
import 'package:bel_gomlaa/fashion-page.dart';
import 'package:bel_gomlaa/splash.dart';

import 'package:bel_gomlaa/vendor-sign-up.dart';
import 'package:bel_gomlaa/welcomepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'customer-sign-up.dart';
import 'homepage.dart';



void main() => runApp(BelGomla());



class BelGomla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

  home: SplashScreen(),

    );
  }
}