import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/screen-img/left-confetti.png"),
              Image.asset("assets/screen-img/right-confetti.png")
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset("assets/screen-img/welcome.png"),
          ),
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              "Mr.Varun",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "Mr.Varun Your profile has been created !",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset("assets/screen-img/correct.png"),
          ),
        ],
      ),
    );
  }
}
