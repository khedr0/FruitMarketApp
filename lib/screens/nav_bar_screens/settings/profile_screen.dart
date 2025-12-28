import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/colors.dart';
import '../../../constants/strings.dart';
import '../../../widgets/customTextField.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(FontAwesomeIcons.circleArrowLeft),
                  ),
                ),
                const SizedBox(height: 50),
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

                const SizedBox(height: 20),
                const Text(
                  AppStrings.welcome,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 20),

                // Full Name
                const CustomTextField(
                  label: AppStrings.fullName,
                  hint: AppStrings.firstAndLastName,
                  isRequired: true,
                ),

                const SizedBox(height: 16),

                // Phone
                const CustomTextField(
                  label: AppStrings.phoneNumberWithWhatsapp,
                  hint: AppStrings.mobileNumber,
                  hasCountryCode: true,
                  isRequired: true,
                ),

                const SizedBox(height: 16),

                // Password
                const CustomTextField(
                  label: AppStrings.password,
                  hint: AppStrings.password,
                  isRequired: true,
                ),

                const SizedBox(height: 30),

                // Sign up button
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
                      AppStrings.update,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
