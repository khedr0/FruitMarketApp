import 'package:flutter/material.dart';
import 'package:fruit_market/screans/productScreen.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductScreen.id);
      },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                image: AssetImage("assets/product.png"),
              ),
              Container(
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "product name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "12.00 KD",
                      style: TextStyle(fontSize: 12),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE59A94), // لون الخلفية الوردي
                        borderRadius:
                            BorderRadius.circular(20), // الشكل الدائري
                      ),
                      child: Text(
                        "Up to 10% Off",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Image(
                image: AssetImage("assets/greenSalla.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
