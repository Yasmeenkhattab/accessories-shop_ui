import 'package:accessories_shop/screens/SignupScreen.dart';
import 'package:accessories_shop/screens/forget_password_screen.dart';
import 'package:accessories_shop/screens/loginScreen.dart';
import 'package:accessories_shop/screens/onboardingScreens.dart';
import 'package:accessories_shop/screens/splachScreen.dart';
import 'package:flutter/material.dart';

import 'screens/OtpCodeScreen.dart';
import 'screens/navigationScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jewellery',
      theme: ThemeData(
        primaryColor: Color(0xFFa27553)
        //Color(0xFFC637)
        //Color(0xFF3E2723)
      ),
      home: Splachscreen()
    );
  }
}


