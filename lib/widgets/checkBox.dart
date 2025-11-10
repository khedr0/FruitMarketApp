import 'package:flutter/material.dart';

class CircularCheckboxExample extends StatefulWidget {
  const CircularCheckboxExample({super.key});

  @override
  State<CircularCheckboxExample> createState() =>
      _CircularCheckboxExampleState();
}

class _CircularCheckboxExampleState extends State<CircularCheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value!;
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50), // يجعلها دائرية
        side: const BorderSide(color: Colors.grey, width: 2), // البوردر رصاصي
      ),
      fillColor: WidgetStateProperty.all(Colors.transparent),
      checkColor: Colors.green, // لون علامة الصح
      side: const BorderSide(color: Colors.grey, width: 2), // البوردر رصاصي
    );
  }
}
