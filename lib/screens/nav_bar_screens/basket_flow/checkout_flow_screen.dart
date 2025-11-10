import 'package:flutter/material.dart';
import 'package:fruit_market/constants/colors.dart';
import 'package:fruit_market/widgets/customButton.dart';

class CheckoutFlowScreen extends StatefulWidget {
  static String id = "checkoutFlow";

  const CheckoutFlowScreen({super.key});

  @override
  State<CheckoutFlowScreen> createState() => _CheckoutFlowScreenState();
}

class _CheckoutFlowScreenState extends State<CheckoutFlowScreen> {
  final PageController _pageController = PageController();
  int _currentStep = 1;

  final steps = ["Delivery Time", "Delivery Address", "Payment"];

  void _nextPage() {
    if (_currentStep < steps.length) {
      setState(() => _currentStep++);
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void _prevPage() {
    if (_currentStep > 1) {
      setState(() => _currentStep--);
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Checkout")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 24),

            // --- Step Indicator Bar ---
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(steps.length, (index) {
                final isActive = index + 1 == _currentStep;
                final isCompleted = index + 1 < _currentStep;
                return Row(
                  children: [
                    // Step Circle
                    Column(
                      children: [
                        isActive
                            ? Image(image: AssetImage("assets/Group 2823.png"))
                            : isCompleted
                                ? const Icon(Icons.check,
                                    color: AppColors.primaryDark, size: 16)
                                : Image(
                                    image: AssetImage("assets/Group 2824.png")),
                        if (isActive)
                          Text(
                            steps[index],
                            style: const TextStyle(
                              color: AppColors.primaryDark,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        else
                          Text(
                            steps[index],
                            style: const TextStyle(color: Colors.grey),
                          ),
                      ],
                    ),
                    // Step Label

                    // Line between steps (except last)
                    if (index < steps.length - 1)
                      Row(
                        children: List.generate(
                          6, // Number of dots (adjust for screen width)
                          (index) {
                            return const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1.0),
                              child: SizedBox(
                                width: 3.0, // Width of the dash/dot
                                height: 1.0, // Thickness of the dash/dot
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.black38,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                  ],
                );
              }),
            ),

            const SizedBox(height: 24),

            // --- Pages (Different UIs) ---
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  Center(child: Text("Delivery Time UI")),
                  Center(child: Text("Delivery Address UI")),
                  Center(child: Text("Payment UI")),
                ],
              ),
            ),

            // --- Navigation Buttons ---
            Padding(
              padding: const EdgeInsets.only(bottom: 26),
              child: Custombutton(
                onPressed: _nextPage,
                text: Text(
                    _currentStep == steps.length ? "Place Order" : "Continue"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
