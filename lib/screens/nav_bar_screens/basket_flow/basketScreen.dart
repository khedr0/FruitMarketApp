import 'package:flutter/material.dart';
import 'package:fruit_market/screens/nav_bar_screens/basket_flow/checkout_flow_screen.dart';

import '../../../constants/colors.dart';
import '../../../constants/strings.dart';
import '../../../widgets/productCartWidget.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});
  static String id = "basketScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: .5,
        shadowColor: Colors.black,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
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
                  Row(
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
                  Row(
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
                  Row(
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("4 items in cart"),
                            Text(
                              "37.50 KD",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, CheckoutFlowScreen.id);
                          },
                          child: Text(
                            "Procced To Checkout",
                            style: TextStyle(color: AppColors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
