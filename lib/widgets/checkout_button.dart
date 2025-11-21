import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  Color backgroundColor;
  Color foregroundColor;
  Color borderColor;
  String text;

  CheckoutButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(
              color: borderColor,
            ),
          ),
          minimumSize: const Size(347, 51), // width, height
        ),
        child: Text(text));
  }
}
