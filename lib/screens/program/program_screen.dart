import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/widgets/header.dart';

import '../../constants/sizes.dart';

class ProgramScreen extends StatefulWidget {
  const ProgramScreen({super.key});

  @override
  State<ProgramScreen> createState() => _ProgramScreenState();
}

class _ProgramScreenState extends State<ProgramScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: sidePadding,
        child: ListView(
          children: [
            Header(
                centerText: "Programs",
                lastItem: Image.asset("assets/screen-img/back.png")),
            const Text(
              "“There is always light. If only we're brave enough to see it.”",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            spacer,
            Padding(
              padding: const EdgeInsets.only(right: 150.0),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Name of the program",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            spacer,
            const Text(
              "What you feel",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
            spacer,
            const Text(
              "How we look at it",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
            spacer,
            const Text(
              "How can we come together to fight it",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
            spacer,
            Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Subscription plans",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            spacer,
            const Text(
                "Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s..."),
            spacer,
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: const Center(child: Text("Prices and packages")),
            ),
            spacer,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/program-img/one_month.png"),
                Image.asset("assets/program-img/three_month.png")
              ],
            ),
            spacer,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/program-img/six_month.png"),
                Image.asset("assets/program-img/twe_month.png")
              ],
            )
          ],
        ),
      ),
    );
  }
}
