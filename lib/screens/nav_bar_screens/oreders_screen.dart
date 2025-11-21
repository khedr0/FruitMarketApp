import 'package:flutter/material.dart';
import 'package:fruit_market/constants/strings.dart';
import 'package:fruit_market/widgets/orders_widget.dart';

import '../../constants/colors.dart';

class OredersScreen extends StatelessWidget {
  const OredersScreen({super.key});

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
          AppStrings.oreders,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [OrdersWidget()],
          ),
        ),
      ),
    );
  }
}
