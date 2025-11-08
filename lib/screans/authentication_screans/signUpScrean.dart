import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';
import '../../widgets/customTextField.dart';
import '../../widgets/navbar.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static String id = "SignUpScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                const Text(
                  AppStrings.fruitMarket,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryDark,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  AppStrings.signUpToWikala,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 30),

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
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return NavBar();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      AppStrings.signUp,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Login link
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: AppStrings.alreadyHaveAccount,
                      style: const TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: ' |${AppStrings.login}',
                          style: const TextStyle(
                            color: AppColors.secondaryDark,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, "loginScrean");
                            },
                        ),
                      ],
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
