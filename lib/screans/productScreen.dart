import 'package:flutter/material.dart';
import 'package:fruit_market/constants/strings.dart';

import '../constants/colors.dart';
import '../widgets/checkBox.dart';

class ProductScreen extends StatelessWidget {
  static String id = "productScreen";

  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.black),
        title: const Text(
          AppStrings.productName,
          style: TextStyle(color: AppColors.primaryDark),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ---------- Product Image + Discount Badge ----------
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/image 10.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 160,
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "10% Off Discount",
                      style: TextStyle(color: AppColors.black, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  AppStrings.categoryName,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),
                Text(
                  AppStrings.price,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 4),

            // ---------- Product name + price ----------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  AppStrings.productName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "KD12.00 ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    Text(
                      "KD14.00",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.primaryLight,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 8),

            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: TextStyle(color: AppColors.textSecondary, fontSize: 13),
            ),

            const SizedBox(height: 8),

            const Text(
              "Sell Per : Kartoon",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 20),
            // ---------- Select weight ----------
            const ExpansionTile(
              // shape: Border(
              //   bottom: BorderSide(color: Colors.transparent, width: 0),
              // ),
              title: Text(
                AppStrings.selectWight,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),

              initiallyExpanded: false,
              children: [
                Row(
                  children: [
                    CircularCheckboxExample(),
                    Text("50 Gram - 4.00 KD")
                  ],
                ),
                Row(
                  children: [
                    CircularCheckboxExample(),
                    Text("1 Kg - 6.25 KD"),
                  ],
                ),
                Row(
                  children: [
                    CircularCheckboxExample(),
                    Text("2 Kg - 12.00 KD")
                  ],
                ),
              ],
            ),

            const SizedBox(height: 10),

            // ---------- Select Addons ----------
            const Text(
              AppStrings.selectAddons,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 6),
            const ExpansionTile(
              title: Text("Choose addons"),
              initiallyExpanded: true,
              children: [
                Row(
                  children: [
                    CircularCheckboxExample(),
                    Text("50 Gram - 4.00 KD")
                  ],
                ),
                Row(
                  children: [
                    CircularCheckboxExample(),
                    Text("1 Kg - 6.25 KD"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.shopping_basket_outlined,
                    color: AppColors.white),
                label: const Text(
                  "Add to Cart",
                  style: TextStyle(color: AppColors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
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
