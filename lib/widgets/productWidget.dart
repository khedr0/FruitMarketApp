import 'package:flutter/material.dart';
import 'package:fruit_market/constants/colors.dart';

import '../screens/productScreen.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductScreen.id);
      },
      child: Card(
        color: AppColors.white,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Image(
                image: AssetImage("assets/product.png"),
              ),
              SizedBox(
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "product name",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
              const SizedBox(
                width: 20,
              ),
              const Image(
                image: AssetImage("assets/greenSalla.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
