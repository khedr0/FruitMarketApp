import 'package:flutter/material.dart';

class DropDownMenuFilterWidget extends StatefulWidget {
  const DropDownMenuFilterWidget({super.key});

  @override
  State<DropDownMenuFilterWidget> createState() =>
      _DropDownMenuFilterWidgetState();
}

class _DropDownMenuFilterWidgetState extends State<DropDownMenuFilterWidget> {
  String selectedValue = "All Areas";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(25),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            icon: Image.asset("assets/Icon ionic-ios-arrow-down.png"),
            value: selectedValue,
            isExpanded: true,
            items: const [
              DropdownMenuItem(
                value: "All Areas",
                child: Text("All Areas"),
              ),
              DropdownMenuItem(
                value: "Area 2",
                child: Text("Area 2"),
              ),
              DropdownMenuItem(
                value: "Area 3",
                child: Text("Area 3"),
              ),
            ],
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
