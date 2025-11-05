import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/customTextField.dart';
import '../later/navbar.dart';

class Checkingbyphone extends StatelessWidget {
  static String id = "checkingScrean";

  const Checkingbyphone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(FontAwesomeIcons.circleArrowLeft),
                  ),
                ),
                const SizedBox(height: 50),
                const Text(
                  "Fruit Market",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff204F38),
                    fontSize: 35,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Enter your Number",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 30),
                // Phone
                const CustomTextField(
                  label: "Phone Number ",
                  hint: "Mobile Number",
                  hasCountryCode: true,
                  isRequired: true,
                ),

                const SizedBox(height: 30),

                // Sign up button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2D5F4F),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return NavBar();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
