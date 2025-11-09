import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_market/screans/authentication_screans/checkingByPhone.dart';
import 'package:fruit_market/screans/authentication_screans/signUpScreen.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';
import '../../widgets/customTextField.dart';
import '../../widgets/navbar.dart';

class LoginScreen extends StatelessWidget {
  static String id = "loginScreen";

  const LoginScreen({super.key});

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
                  AppStrings.loginToWikala,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 30),
                const CustomTextField(
                  label: AppStrings.phoneNumberWithWhatsapp,
                  hint: AppStrings.mobileNumber,
                  hasCountryCode: true,
                  isRequired: true,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  label: AppStrings.password,
                  hint: AppStrings.password,
                  isRequired: true,
                ),
                const SizedBox(height: 16),
                Container(
                  alignment: AlignmentDirectional.topEnd,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, PhoneVerificationScreen.id);
                    },
                    child: const Text(
                      AppStrings.forgetPassword,
                      style: TextStyle(
                        color: AppColors.secondaryDark,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
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
                      AppStrings.login,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: AppStrings.dontHaveAccount,
                      style: const TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: ' |${AppStrings.signUp}',
                          style: const TextStyle(
                            color: AppColors.secondaryDark,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, SignUpScreen.id);
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
