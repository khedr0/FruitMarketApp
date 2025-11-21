import 'package:flutter/material.dart';
import 'package:fruit_market/constants/colors.dart';

import '../../../widgets/checkout_button.dart';

class CheckoutResult extends StatelessWidget {
  final bool isSuccess;
  const CheckoutResult({super.key, required this.isSuccess});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: isSuccess
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("assets/successfuly.png")),
                SizedBox(height: 50),
                Text(
                  "YOUR ORDER IS CONFIRMED!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryDark,
                  ),
                ),
                Text(
                  "Your order code: #243188",
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Thank you for choosing our products!",
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 60),
                CheckoutButton(
                  backgroundColor: AppColors.primaryDark,
                  text: "Continue Shopping",
                  foregroundColor: AppColors.white,
                  borderColor: AppColors.primaryDark,
                ),
                SizedBox(height: 25),
                CheckoutButton(
                  backgroundColor: AppColors.white,
                  text: "Track Order",
                  foregroundColor: AppColors.primaryDark,
                  borderColor: AppColors.primaryDark,
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("assets/faild.png")),
                SizedBox(height: 50),
                Text(
                  "OPS",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.failer,
                  ),
                ),
                Text(
                  "Error while confirming your payment/order/",
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 60),
                CheckoutButton(
                  backgroundColor: AppColors.failer,
                  text: "Back",
                  foregroundColor: AppColors.white,
                  borderColor: AppColors.white,
                ),
              ],
            ),
    );
  }
}
