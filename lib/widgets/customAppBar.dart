import 'package:flutter/material.dart';

import '../constants/strings.dart';
import 'checkBox.dart';
import 'customButton.dart';
import 'dropDownMenuFilterWidget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
      automaticallyImplyLeading: true,
      elevation: 0,
    );
  }
}
