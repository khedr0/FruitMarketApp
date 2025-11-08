import 'package:flutter/material.dart';
import 'package:fruit_market/constants/strings.dart';
import 'package:fruit_market/widgets/dropDownMenuFilterWidget.dart';

import '../../widgets/categoryCardWidget.dart';
import '../../widgets/checkBox.dart';
import '../../widgets/customButton.dart';
import '../../widgets/sellerCardWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.fruitMarket,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff204F38),
            fontSize: 35,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/Icon feather-search.png"),
          ),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Center(
                        child: Text(
                      AppStrings.filterBy,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Text(
                              AppStrings.deliveredTo,
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff858D9A)),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            ImageIcon(
                              AssetImage("assets/fizba.png"),
                              size: 20,
                            ),
                          ],
                        ),
                        DropDownMenuFilterWidget(),
                        Row(
                          children: [
                            CircularCheckboxExample(),
                            Text(AppStrings.offers)
                          ],
                        ),
                        Row(
                          children: [
                            CircularCheckboxExample(),
                            Text(AppStrings.freeDelivery)
                          ],
                        ),
                        Custombutton(
                          text: Text(AppStrings.applyFilter),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                    actions: [
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // يغلق البوب أب
                          },
                          child: Text(
                            AppStrings.close,
                            style: TextStyle(color: Color(0xff656565)),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            icon: Image.asset("assets/Layer 15.png"),
          )
        ],
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryCardWidget(
                  image: "assets/Frame 2857.png",
                ),
                CategoryCardWidget(
                  image: "assets/coffee.png",
                ),
                CategoryCardWidget(
                  image: "assets/farm.png",
                ),
                CategoryCardWidget(
                  image: "assets/pharmacy.png",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.sellers,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  AppStrings.showAll,
                  style: TextStyle(fontSize: 16, color: Color(0xff235C95)),
                ),
              ],
            ),
            sellerCardWidget(),
            sellerCardWidget(),
            sellerCardWidget(),
          ],
        ),
      ),
    );
  }
}
