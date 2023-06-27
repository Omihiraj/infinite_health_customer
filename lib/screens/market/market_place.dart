import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/constants/sizes.dart';
import 'package:ih_customer/widgets/header.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({super.key});

  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: sidePadding,
        child: ListView(
          children: [
            Header(
                centerText: "Market Place",
                lastItem: Row(
                  children: [
                    Image.asset("assets/img/heart.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/consultants-img/back.png")
                  ],
                )),
            const Text(
              "Craving for something unhealthy ?",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Lets search for healthy !",
              style: TextStyle(fontSize: 18),
            ),
            spacer,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      "Veg",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Switch(
                      onChanged: (e) {},
                      value: true,
                      activeColor: secondaryColor,
                      activeTrackColor: primaryColor,
                      inactiveThumbColor: secondaryColor,
                      inactiveTrackColor: Colors.grey,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Non-veg",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Switch(
                      onChanged: (e) {},
                      value: true,
                      activeColor: secondaryColor,
                      activeTrackColor: primaryColor,
                      inactiveThumbColor: secondaryColor,
                      inactiveTrackColor: Colors.grey,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Eggetarian",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Switch(
                      onChanged: (e) {},
                      value: true,
                      activeColor: secondaryColor,
                      activeTrackColor: primaryColor,
                      inactiveThumbColor: secondaryColor,
                      inactiveTrackColor: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
            spacer,
            spacer,
            const Text(
              "All Categories",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            spacer,
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  foodItem(
                      text: "Fruits and Vegetables",
                      imgUrl: "assets/market-img/fruit_veg.png"),
                  foodItem(
                      text: "Dairy,Bread and Eggs",
                      imgUrl: "assets/market-img/diary.png"),
                  foodItem(
                      text: "Chocolates",
                      imgUrl: "assets/market-img/choco.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  foodItem(
                      text: "Desserts",
                      imgUrl: "assets/market-img/desserts.png"),
                  foodItem(
                      text: "Drinks and Juices",
                      imgUrl: "assets/market-img/drinks.png"),
                  foodItem(
                      text: "Tea and cofee",
                      imgUrl: "assets/market-img/tea.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  foodItem(
                      text: "Dry fruits",
                      imgUrl: "assets/market-img/dry_food.png"),
                  foodItem(
                      text: "Sauces and Spreads",
                      imgUrl: "assets/market-img/sauces.png"),
                  foodItem(
                      text: "Biscuits",
                      imgUrl: "assets/market-img/biscuits.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column foodItem({required String text, required String imgUrl}) {
    return Column(
      children: [
        Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: secondaryColor, width: 2)),
            child: Image.asset(imgUrl)),
        SizedBox(
            width: 100,
            child: Text(
              text,
              textAlign: TextAlign.center,
            ))
      ],
    );
  }
}
