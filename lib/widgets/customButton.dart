import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Custombutton extends StatelessWidget {
  Text text;
  final VoidCallback onPressed;

  Custombutton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryDark,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        minimumSize: const Size(200, 50), // width, height
      ),
      child: text,
    );
  }
}
