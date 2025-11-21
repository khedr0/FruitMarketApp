import 'package:flutter/material.dart';
import 'package:fruit_market/constants/colors.dart';
import 'package:fruit_market/widgets/checkBox.dart';
import 'package:fruit_market/widgets/customButton.dart';

import '../../../widgets/date_picker.dart';
import '../../../widgets/payment_widget.dart';
import 'checkout_result.dart';

class CheckoutFlowScreen extends StatefulWidget {
  static String id = "checkoutFlow";

  const CheckoutFlowScreen({super.key});

  @override
  State<CheckoutFlowScreen> createState() => CheckoutFlowScreenState();
}

class CheckoutFlowScreenState extends State<CheckoutFlowScreen> {
  final PageController pageController = PageController();
  int currentStep = 1;
  int currentPageIndex = 0;

  final steps = ["Delivery Time", "Delivery Address", "Payment"];

  void nextPage() {
    if (currentStep < steps.length) {
      setState(() => currentStep++);
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void prevPage() {
    if (currentStep > 1) {
      setState(() => currentStep--);
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

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
          "Checkout",
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(steps.length, (index) {
                final isActive = index + 1 == currentStep;
                final isCompleted = index + 1 < currentStep;

                return Row(
                  children: [
                    Column(
                      children: [
                        isActive
                            ? Image(image: AssetImage("assets/Group 2823.png"))
                            : isCompleted
                                ? const Icon(Icons.check,
                                    color: AppColors.primaryDark, size: 16)
                                : Image(
                                    image: AssetImage("assets/Group 2824.png")),
                        Text(
                          steps[index],
                          style: TextStyle(
                            color:
                                isActive ? AppColors.primaryDark : Colors.grey,
                            fontWeight: isActive ? FontWeight.w600 : null,
                          ),
                        )
                      ],
                    ),
                    if (index < steps.length - 1)
                      Row(
                        children: List.generate(
                          6,
                          (index) {
                            return const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1.0),
                              child: SizedBox(
                                width: 3.0,
                                height: 1.0,
                                child: DecoratedBox(
                                  decoration:
                                      BoxDecoration(color: Colors.black38),
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
            Expanded(
              child: PageView(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey, width: 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Now",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                CircularCheckboxExample(),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey, width: 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Select Delivery Time",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    CircularCheckboxExample(),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                const SimpleDatePicker()
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey, width: 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Add New Address",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey, width: 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(Icons.location_on_outlined),
                                        SizedBox(width: 8),
                                        Text("Address 1"),
                                      ],
                                    ),
                                    CircularCheckboxExample(),
                                  ],
                                ),
                                Text("John Doe"),
                                Text("+000-11-1234567"),
                                SizedBox(height: 10),
                                Text(
                                    "Room # 1 -Ground Floor, Al Najoum Building, 24B"),
                                Text("Street, Dubai - United Arab Emirates"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Coupon Code",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 15),
                          Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: AppColors.textSecondary),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText:
                                            "Do You Have any Coupon Code?",
                                        hintStyle: TextStyle(
                                          color: AppColors.textSecondary,
                                          fontSize: 13,
                                        ),
                                        isDense: true,
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 12),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.primaryDark,
                                      minimumSize: Size(85, 34),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    child: Text(
                                      "Apply",
                                      style: TextStyle(color: AppColors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Text("Order Details",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total Items"),
                              Text("4 Items in cart"),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Subtotal"),
                              Text("36.00 KD"),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Shipping Charges"),
                              Text("1.50 KD"),
                            ],
                          ),
                          Divider(thickness: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bag Total",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryDark,
                                ),
                              ),
                              Text(
                                "37.50 KD",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryDark,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Text("Payment",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          PaymentWidget(
                            image: "assets/crediteCard.png",
                            payWay: "Credit Card/Debit card",
                          ),
                          PaymentWidget(
                            image: "assets/Cash.png",
                            payWay: "Cash of Delivery",
                          ),
                          PaymentWidget(
                            image: "assets/knet.png",
                            payWay: "Knet",
                          ),
                        ],
                      ),
                    ),
                  ),
                  CheckoutResult(isSuccess: true),
                ],
              ),
            ),
            if (currentPageIndex != 3)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (currentStep > 1)
                    Expanded(
                      child: Custombutton(
                        onPressed: () {
                          if (currentStep > 1) {
                            setState(() => currentStep--);
                            pageController.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        text: Text("Back"),
                      ),
                    )
                  else
                    SizedBox(width: 0),
                  SizedBox(width: 16),
                  Expanded(
                    child: Custombutton(
                      onPressed: () {
                        if (currentStep == steps.length) {
                          pageController.animateToPage(
                            3,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        } else {
                          nextPage();
                        }
                      },
                      text: Text(
                        currentStep == steps.length
                            ? "Place Order"
                            : "Continue",
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
