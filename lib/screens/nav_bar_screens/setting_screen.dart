import 'package:flutter/material.dart';
import 'package:fruit_market/constants/strings.dart';
import 'package:fruit_market/widgets/customButton.dart';

import '../../constants/colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset("assets/Icon ionic-ios-arrow-back (1).png"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          AppStrings.fruitMarket,
          style: TextStyle(
            color: AppColors.primaryDark,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: .5,
        shadowColor: AppColors.black,
        centerTitle: true,
        backgroundColor: AppColors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image(
                  image: AssetImage("assets/circle.png"),
                  height: 90,
                  width: 90,
                ),
                Image(
                  image: AssetImage("assets/person.png"),
                  height: 34,
                  width: 31,
                )
              ],
            ),
            SizedBox(height: 15),
            Text(
              "Welcome, Fruit Market",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 15),
            Custombutton(text: Text(" Login "), onPressed: () {}),
            SizedBox(height: 15),
            SettingRow(text: "profile", prefixIcon: "assets/profile.png"),
            SettingRow(
                text: "My Orders",
                prefixIcon: "assets/Icon awesome-list-ol.png"),
            SettingRow(
                text: "Favorite",
                prefixIcon: "assets/Icon material-favorite-border.png"),
            SettingRow(text: "Language", prefixIcon: "assets/24 Language.png"),
            SettingRow(
                text: "Support",
                prefixIcon: "assets/Icon awesome-headphones-alt.png"),
            SettingRow(
                text: "Terms & Conditions",
                prefixIcon: "assets/termsAndCondition.png"),
            SettingRow(text: "About Us", prefixIcon: "assets/AboutUs.png"),
          ],
        ),
      ),
    );
  }
}

class SettingRow extends StatelessWidget {
  String prefixIcon;
  String text;
  SettingRow({
    super.key,
    required this.text,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageIcon(AssetImage(prefixIcon)),
              SizedBox(
                width: 15,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          ImageIcon(AssetImage("assets/rightArrow.png"))
        ],
      ),
    );
  }
}
