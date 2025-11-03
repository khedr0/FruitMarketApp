import 'package:flutter/material.dart';
import 'package:fruit_market/widgets/customButton.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentPage = 0;

  final List<Map<String, String>> pagesData = [
    {
      "image": "assets/Group 2805.png",
      "title": "E Shopping",
      "description": "Explore op organic fruits & grab them"
    },
    {
      "image": "assets/Group 2805.png",
      "title": "Delivery Arrived",
      "description": "Order is arrived at your Place."
    },
    {
      "image": "assets/Group 2805.png",
      "title": "Delivery Arrived",
      "description": "Order is arrived at your Place"
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
                "Skip",
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
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                height: 10,
                width: currentPage == index ? 22 : 10,
                decoration: BoxDecoration(
                  color: currentPage == index
                      ? const Color(0xFF204F38)
                      : Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Custombutton(
            text: Text(
              currentPage == pagesData.length - 1 ? "Get Started" : "Next",
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
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("استنى")),
                );
              }
            },
          ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
