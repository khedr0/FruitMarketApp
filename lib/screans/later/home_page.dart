import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fruit Market",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff204F38),
            fontSize: 35,
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
    );
  }
}
