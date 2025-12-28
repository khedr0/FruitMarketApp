import 'package:flutter/material.dart';
import 'package:fruit_market/constants/colors.dart';
import 'package:fruit_market/widgets/customTextField.dart';

import '../../../constants/strings.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

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
          AppStrings.contactUs,
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
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomTextField(label: "Name", hint: ""),
            SizedBox(
              height: 20,
            ),
            CustomTextField(label: "Mobile Number", hint: ""),
            SizedBox(
              height: 20,
            ),
            CustomTextField(label: "Message", hint: ""),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  AppStrings.submit,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageIcon(
                  size: 48,
                  AssetImage("assets/Frame 2883.png"),
                ),
                ImageIcon(
                  size: 48,
                  AssetImage("assets/Frame 2884.png"),
                ),
                ImageIcon(
                  size: 48,
                  AssetImage("assets/Frame 2885.png"),
                ),
                ImageIcon(
                  size: 48,
                  AssetImage("assets/Frame 2886.png"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
