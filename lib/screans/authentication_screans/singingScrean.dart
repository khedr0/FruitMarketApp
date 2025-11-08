import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';

class SingingScrean extends StatelessWidget {
  static String id = "singingScrean";
  const SingingScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(FontAwesomeIcons.xmark),
                ),
              ),
              const SizedBox(height: 50),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                      AppStrings.welcomeToApp,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const SigningButton(
                      title: AppStrings.signInWithPhone,
                      icon: FontAwesomeIcons.phone,
                      backgroundColor: Colors.transparent,
                      foregroundColor: AppColors.textPrimary,
                    ),
                    const SigningButton(
                      icon: FontAwesomeIcons.google,
                      title: AppStrings.signInWithGoogle,
                      backgroundColor: Colors.transparent,
                      foregroundColor: AppColors.textPrimary,
                    ),
                    const SigningButton(
                      icon: FontAwesomeIcons.facebook,
                      title: AppStrings.signInWithFacebook,
                      backgroundColor: Color(0xFF235C95),
                      foregroundColor: AppColors.white,
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          AppStrings.alreadyMember,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "loginScrean");
                          },
                          child: const Text(
                            AppStrings.login,
                            style: TextStyle(
                              color: AppColors.secondaryDark,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.secondaryDark,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 15,
                          ),
                          children: [
                            TextSpan(text: AppStrings.byContinuePart1),
                            TextSpan(
                              text: AppStrings.termsOfService,
                              style: TextStyle(color: AppColors.secondaryDark),
                            ),
                            TextSpan(text: AppStrings.andOur),
                            TextSpan(
                              text: AppStrings.privacyPolicy,
                              style: TextStyle(color: AppColors.secondaryDark),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SigningButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color backgroundColor;
  final Color foregroundColor;

  const SigningButton({
    super.key,
    required this.icon,
    required this.title,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(347, 51),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          side: const BorderSide(
            color: AppColors.textSecondary,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: foregroundColor, size: 20),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: foregroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
