import 'package:flutter/material.dart';
import 'package:fruit_market/screans/authentication_screans/checkingByPhone.dart';
import 'package:fruit_market/screans/authentication_screans/loginScrean.dart';
import 'package:fruit_market/screans/authentication_screans/signUpScrean.dart';
import 'package:fruit_market/screans/authentication_screans/singingScrean.dart';
import 'package:fruit_market/screans/onBoarding.dart';
import 'package:fruit_market/screans/splashScrean.dart';

void main() {
  runApp(const FruitMarketApp());
}

class FruitMarketApp extends StatelessWidget {
  const FruitMarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splashScrean',
      routes: {
        'splashScrean': (context) => const SplashScreen(),
        'startScrean': (context) => const OnBoarding(),
        'singingScrean': (context) => const SingingScrean(),
        'SignUpScreen': (context) => const SignUpScreen(),
        "loginScrean": (context) => const LoginScreen(),
        "phoneVerificationScreen": (context) => const PhoneVerificationScreen(),
      },
    );
  }
}
