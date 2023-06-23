import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/widgets/header.dart';

import '../../constants/sizes.dart';

class InfiniteHealth extends StatefulWidget {
  const InfiniteHealth({super.key});

  @override
  State<InfiniteHealth> createState() => _InfiniteHealthState();
}

class _InfiniteHealthState extends State<InfiniteHealth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: sidePadding,
        child: ListView(
          children: [
            Header(
                centerText: "Why Infinite Health",
                lastItem: Image.asset("assets/screen-img/back.png")),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Why Infinite Health ?",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
                "Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum is simply dummy text of the printing and type setting industry."),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/program-img/logo.png"),
                SizedBox(
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "About Us",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum is simply dummy text of the printing",
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Programs we offer",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                programItem(text: "Program 1"),
                const SizedBox(
                  height: 10,
                ),
                programItem(text: "Program 2"),
                const SizedBox(
                  height: 10,
                ),
                programItem(text: "Program 3")
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Click Here",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Successs Stories",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                storyItem(image: "assets/program-img/doc.png"),
                const SizedBox(
                  height: 10,
                ),
                storyItem(image: "assets/program-img/doc.png"),
                const SizedBox(
                  height: 10,
                ),
                storyItem(image: "assets/program-img/doc.png")
              ],
            )
          ],
        ),
      ),
    );
  }

  Container storyItem({required String image}) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: secondaryColor, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image),
          SizedBox(
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "our success stories",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing and type setting industry.")
              ],
            ),
          )
        ],
      ),
    );
  }

  Container programItem({required String text}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Text(text),
            Image.asset("assets/program-img/arrow-down.png"),
          ],
        ),
      ),
    );
  }
}
