import 'package:flutter/material.dart';
import 'package:fruit_market/constants/strings.dart';
import 'package:fruit_market/widgets/customAppBar.dart';

import '../widgets/categoryCardWidget.dart';
import '../widgets/productWidget.dart';
import '../widgets/sellerCardWidget.dart';

class SellerScreen extends StatelessWidget {
  const SellerScreen({super.key});
  static String id = "sellerScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SellerCardWidget(),
            SizedBox(
              height: 10,
            ),
            Text(
              AppStrings.categories,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CategoryCardWidget(
                      image: "assets/fruits.png",
                    ),
                    Text(AppStrings.fruits)
                  ],
                ),
                Column(
                  children: [
                    CategoryCardWidget(
                      image: "assets/vegetables.png",
                    ),
                    Text(AppStrings.vegetables)
                  ],
                ),
                Column(
                  children: [
                    CategoryCardWidget(
                      image: "assets/phone.png",
                    ),
                    Text(AppStrings.phone)
                  ],
                ),
                Column(
                  children: [
                    CategoryCardWidget(
                      image: "assets/pets.png",
                    ),
                    Text(AppStrings.pets)
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              AppStrings.products,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    ProductWidget(),
                    ProductWidget(),
                    ProductWidget(),
                    ProductWidget(),
                    ProductWidget(),
                    ProductWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
