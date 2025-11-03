import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  Text text;
  final VoidCallback onPressed;
  Custombutton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF204F38),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 14,
          ),
        ),
        child: text);
  }
}
