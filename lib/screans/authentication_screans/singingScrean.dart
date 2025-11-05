import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingingScrean extends StatelessWidget {
  static String id = "singingScrean";
  const SingingScrean({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(FontAwesomeIcons.xmark),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Fruit Market",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff204F38),
                          fontSize: 35),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Welcome to Our app",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SigningButton(
                      title: "Sign in with Phone Number",
                      icon: FontAwesomeIcons.phone,
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xff242729),
                    ),
                    SigningButton(
                      icon: FontAwesomeIcons.google,
                      title: "Sign in with Google",
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xff242729),
                    ),
                    SigningButton(
                        icon: FontAwesomeIcons.facebook,
                        title: "Sign in with Facebook",
                        backgroundColor: Color(0xff235C95),
                        foregroundColor: Colors.white),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already member? ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "loginScrean");
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Color(0xff004D8E), // لون الكلمة
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  Color(0xff004D8E), // نفس اللون بالظبط
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style:
                              TextStyle(color: Color(0xff88909C), fontSize: 15),
                          children: [
                            TextSpan(text: 'By continue you agree to our '),
                            TextSpan(
                              text: 'Terms of Service',
                              style: TextStyle(color: Color(0xff005B96)),
                            ),
                            TextSpan(text: ' and our '),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(color: Color(0xff005B96)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SigningButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color backgroundColor;
  final Color foregroundColor;

  const SigningButton({
    super.key,
    required this.icon,
    required this.title,
    required this.backgroundColor, // مطلوب من المستخدم
    required this.foregroundColor, // مطلوب من المستخدم
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(347, 51),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          side: const BorderSide(
              color: Color(0xff656665), width: 1), // بوردر ثابت
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: foregroundColor, size: 20),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: foregroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
