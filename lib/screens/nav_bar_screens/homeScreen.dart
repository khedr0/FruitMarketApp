import 'package:flutter/material.dart';
import 'package:fruit_market/constants/strings.dart';

import '../../constants/colors.dart';
import '../../widgets/categoryCardWidget.dart';
import '../../widgets/customAppBar.dart';
import '../../widgets/rowCheck.dart';
import '../../widgets/sellerCardWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            ImageCarousel(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryCardWidget(
                  image: "assets/Frame 2857.png",
                ),
                CategoryCardWidget(
                  image: "assets/coffee.png",
                ),
                CategoryCardWidget(
                  image: "assets/farm.png",
                ),
                CategoryCardWidget(
                  image: "assets/pharmacy.png",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.sellers,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  AppStrings.showAll,
                  style: TextStyle(fontSize: 16, color: Color(0xff235C95)),
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SellerCardWidget(),
                    SellerCardWidget(),
                    SellerCardWidget(),
                    SellerCardWidget(),
                    SellerCardWidget(),
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
