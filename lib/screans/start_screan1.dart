import 'package:flutter/material.dart';

class StartScrean1 extends StatelessWidget {
  const StartScrean1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            child: Text("Skip"),
          ),
          Image(image: AssetImage("assets/Group 2805.png")),
        ],
      ),
    );
  }
}
