import 'package:flutter/material.dart';
import 'package:fruit_market/constants/strings.dart';
import 'package:fruit_market/screens/nav_bar_screens/settings/profile_screen.dart';
import 'package:fruit_market/widgets/customButton.dart';

import '../../../constants/colors.dart';
import '../../../widgets/gesture.dart';
import 'contact_us.dart';

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
            const Stack(
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
            const SizedBox(height: 15),
            const Text(
              "Welcome, Fruit Market",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 15),
            Custombutton(text: const Text(" Login "), onPressed: () {}),
            const SizedBox(height: 15),
            SettingRow(
              text: "profile",
              prefixIcon: "assets/profile.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ProfileScreen()),
                );
              },
            ),
            SettingRow(
                text: "My Orders",
                prefixIcon: "assets/Icon awesome-list-ol.png",
                onTap: () {}),
            SettingRow(
                text: "Favorite",
                prefixIcon: "assets/Icon material-favorite-border.png",
                onTap: () {}),
            SettingRow(
                text: "Language",
                prefixIcon: "assets/24 Language.png",
                onTap: () {}),
            SettingRow(
                text: "Support",
                prefixIcon: "assets/Icon awesome-headphones-alt.png",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ContactUs()),
                  );
                }),
            SettingRow(
                text: "Terms & Conditions",
                prefixIcon: "assets/termsAndCondition.png",
                onTap: () {}),
            SettingRow(
                text: "About Us",
                prefixIcon: "assets/AboutUs.png",
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}

class SettingRow extends StatelessWidget {
  final VoidCallback onTap;
  final String prefixIcon;
  final String text;
  SettingRow({
    super.key,
    required this.onTap,
    required this.text,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: PressableItem(
        onTap: onTap,
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
            ImageIcon(
              AssetImage("assets/rightArrow.png"),
            )
          ],
        ),
      ),
    );
  }
}
