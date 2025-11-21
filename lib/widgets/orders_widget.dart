import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../screens/productScreen.dart';

class OrdersWidget extends StatelessWidget {
  const OrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const ProductScreen()),
        );
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
                image: AssetImage("assets/finished (1).png"),
                height: 58,
                width: 58,
              ),
              SizedBox(
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "#882610",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        const Text(
                          "8 Sep",
                          style: TextStyle(fontSize: 14),
                        ),
                        ImageIcon(
                          AssetImage("assets/Ellipse 71.png"),
                          color: Colors.grey,
                        ),
                        Text(
                          "3 items",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [Text("Status : "), Text("Finished")],
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Image(
                image: AssetImage("assets/finished.png"),
                height: 58,
                width: 58,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
