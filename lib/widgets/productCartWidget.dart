import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_market/widgets/quantitySelector.dart';

import '../constants/colors.dart';
// import 'package:fruit_market/constants/colors.dart'; // Assuming this exists
// import 'package:fruit_market/widgets/quantitySelector.dart'; // Assuming this exists

class ProductCartWidget extends StatelessWidget {
  const ProductCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center, // Align vertically
          children: [
            Image.asset(
              "assets/product.png",
              width: 80,
              height: 80,
            ),

            const SizedBox(width: 12),
            Expanded(
              child: SizedBox(
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "product name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis, // Prevents text overflow
                    ),
                    const Text(
                      "12.00 KD",
                      style: TextStyle(fontSize: 12),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.primaryLight, // لون الخلفية الوردي
                        borderRadius:
                            BorderRadius.circular(20), // الشكل الدائري
                      ),
                      child: const Text(
                        "Up to 10% Off",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(width: 12), // Space before the actions column

            // 3. Actions Column (Fixed Width)
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.trash),
                  iconSize: 15,
                ),
                QuantitySelector()
              ],
            )
          ],
        ),
      ),
    );
  }
}
