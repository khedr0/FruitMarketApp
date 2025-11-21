import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'checkBox.dart';

class PaymentWidget extends StatelessWidget {
  String image;
  String payWay;
  PaymentWidget({super.key, required this.payWay, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20), // الزوايا
          border: Border.all(color: Colors.grey, width: 1), // البوردر
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ImageIcon(AssetImage(image)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    payWay,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              CircularCheckboxExample(),
            ],
          ),
        ),
      ),
    );
  }
}
