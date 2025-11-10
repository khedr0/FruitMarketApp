import 'package:flutter/material.dart';
import 'package:fruit_market/screens/authentication_screes/checking_by_phone.dart';
import 'package:fruit_market/screens/authentication_screes/login_screen.dart';
import 'package:fruit_market/screens/authentication_screes/sign_up_screen.dart';
import 'package:fruit_market/screens/authentication_screes/singing_screen.dart';
import 'package:fruit_market/screens/nav_bar_screens/basket_flow/basketScreen.dart';
import 'package:fruit_market/screens/nav_bar_screens/basket_flow/checkout_flow_screen.dart';
import 'package:fruit_market/screens/onBoarding.dart';
import 'package:fruit_market/screens/productScreen.dart';
import 'package:fruit_market/screens/sellerScreen.dart';
import 'package:fruit_market/screens/splashScreen.dart';

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
        "loginScreen": (context) => const LogInScreen(),
        "phoneVerificationScreen": (context) => const PhoneVerificationScreen(),
        "sellerScreen": (context) => const SellerScreen(),
        "productScreen": (context) => const ProductScreen(),
        "basketScreen": (context) => const BasketScreen(),
        "checkoutFlow": (context) => const CheckoutFlowScreen(),
      },
    );
  }
}
