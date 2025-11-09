import 'package:flutter/material.dart';
import 'package:fruit_market/screans/authentication_screans/checkingByPhone.dart';
import 'package:fruit_market/screans/authentication_screans/loginScreen.dart';
import 'package:fruit_market/screans/authentication_screans/signUpScreen.dart';
import 'package:fruit_market/screans/authentication_screans/singingScreen.dart';
import 'package:fruit_market/screans/onBoarding.dart';
import 'package:fruit_market/screans/productScreen.dart';
import 'package:fruit_market/screans/sellerScreen.dart';
import 'package:fruit_market/screans/splashScreen.dart';

void main() {
  runApp(const FruitMarketApp());
}

class FruitMarketApp extends StatelessWidget {
  const FruitMarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splashScreen',
      routes: {
        'splashScreen': (context) => const SplashScreen(),
        'onBoarding': (context) => const OnBoarding(),
        'singingScreen': (context) => const SingingScreen(),
        'SignUpScreen': (context) => const SignUpScreen(),
        "loginScreen": (context) => const LoginScreen(),
        "phoneVerificationScreen": (context) => const PhoneVerificationScreen(),
        "sellerScreen": (context) => const SellerScreen(),
        "productScreen": (context) => const ProductScreen(),
      },
    );
  }
}
