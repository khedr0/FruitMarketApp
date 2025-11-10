import 'package:flutter/material.dart';
import 'package:fruit_market/constants/strings.dart';
import 'package:fruit_market/widgets/customButton.dart';

import '../constants/colors.dart';
import 'authentication_screes/singing_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});
  static String id = "onBoarding";

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller = PageController();
  int currentPage = 0;

  final List<Map<String, String>> pagesData = [
    {
      "image": "assets/Group 2805.png",
      "title": AppStrings.eShopping,
      "description": AppStrings.exploreFruits
    },
    {
      "image": "assets/Group 2805.png",
      "title": AppStrings.deliveryArrived,
      "description": AppStrings.orderArrived
    },
    {
      "image": "assets/Group 2805.png",
      "title": AppStrings.deliveryArrived,
      "description": AppStrings.orderArrived
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32.0),
            child: GestureDetector(
              onTap: () {
                _controller.jumpToPage(pagesData.length - 1);
              },
              child: const Text(
                AppStrings.skip,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff656565),
                  decoration: TextDecoration.underline,
                  height: 5,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: pagesData.length,
              onPageChanged: (index) {
                setState(() => currentPage = index);
              },
              itemBuilder: (context, index) {
                final page = pagesData[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    Image.asset(page["image"]!, height: 250),
                    const SizedBox(height: 30),
                    Text(
                      page["title"]!,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        page["description"]!,
                        textAlign: TextAlign.center,
                        style:
                            const TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              pagesData.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentPage == index
                      ? AppColors.primary
                      : AppColors.primaryLighter,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Custombutton(
            text: Text(
              currentPage == pagesData.length - 1
                  ? AppStrings.getStarted
                  : AppStrings.next,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              if (currentPage < pagesData.length - 1) {
                _controller.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut);
              } else {
                Navigator.pushNamed(context, SingingScreen.id);
              }
            },
          ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
