import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';
import '../../widgets/productCartWidget.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});
  static String id = "basketScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.black),
        title: const Text(
          AppStrings.basket,
          style: TextStyle(color: AppColors.primaryDark),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 450,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ProductCartWidget(),
                    ProductCartWidget(),
                    ProductCartWidget(),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: List.generate(
                    50, // Number of dots (adjust for screen width)
                    (index) {
                      return const Expanded(
                        // Wrap each dot/space pair in Expanded to distribute evenly
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1.0),
                          child: SizedBox(
                            width: 3.0, // Width of the dash/dot
                            height: 1.0, // Thickness of the dash/dot
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.black38,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text("36.00 KD",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping Charges",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text("1.50 KD",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bag Total",
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.primaryDark,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("37.50 KD",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryDark))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
