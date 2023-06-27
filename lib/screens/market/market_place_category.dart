import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/constants/sizes.dart';
import 'package:ih_customer/widgets/header.dart';

class MarketPlaceCategory extends StatefulWidget {
  const MarketPlaceCategory({super.key});

  @override
  State<MarketPlaceCategory> createState() => _MarketPlaceCategoryState();
}

class _MarketPlaceCategoryState extends State<MarketPlaceCategory> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                productItem(
                    isSpecial: true,
                    img: "assets/market-img/red_apple.png",
                    discount: 17,
                    oldPrice: 312,
                    salePrice: 260,
                    qty: 4,
                    rate: 4.5,
                    title: "Fresh Apple Red,4 pieces pack"),
                productItem(
                    isSpecial: false,
                    img: "assets/market-img/apple.png",
                    discount: 17,
                    oldPrice: 312,
                    salePrice: 260,
                    qty: 4,
                    rate: 4.5,
                    title: "Fresh Apple Green, Imported"),
              ],
            ),
            spacer,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                productItem(
                    isSpecial: true,
                    img: "assets/market-img/mango.png",
                    discount: 17,
                    oldPrice: 312,
                    salePrice: 260,
                    qty: 4,
                    rate: 4.5,
                    title: "Fresh Mango, Kesar, 1Kg"),
                productItem(
                    isSpecial: true,
                    img: "assets/market-img/banana.png",
                    discount: 17,
                    oldPrice: 312,
                    salePrice: 260,
                    qty: 4,
                    rate: 4.5,
                    title: "Fresh Banana Robusta, 500 g"),
              ],
            ),
            spacer,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                productItem(
                    isSpecial: false,
                    img: "assets/market-img/pineapple.png",
                    discount: 17,
                    oldPrice: 312,
                    salePrice: 260,
                    qty: 4,
                    rate: 4.5,
                    title: "Fresh Apple Red,4 pieces pack"),
                productItem(
                    isSpecial: false,
                    img: "assets/market-img/watermelon.jpg",
                    discount: 17,
                    oldPrice: 312,
                    salePrice: 260,
                    qty: 4,
                    rate: 4.5,
                    title: "Fresh Apple Red,4 pieces pack"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget productItem(
      {required bool isSpecial,
      required String img,
      required String title,
      required double rate,
      required int discount,
      required int qty,
      required int oldPrice,
      required int salePrice}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: secondaryColor),
              child: Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      width: 150,
                      height: 150,
                      img,
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            isSpecial == true
                ? Positioned(
                    top: 0,
                    left: 7,
                    child: Image.asset("assets/market-img/special.png"))
                : Container(),
          ],
        ),
        SizedBox(
          width: 160,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 110,
                  child: Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  )),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 8,
                      color: Colors.amber,
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(fontSize: 8, color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Text(
          "$discount% off",
          style: const TextStyle(fontSize: 10),
        ),
        Text(
          "Pack of $qty",
          style: const TextStyle(fontSize: 10),
        ),
        SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "₹ $oldPrice",
                      style: const TextStyle(
                          decoration: TextDecoration.lineThrough),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "₹ $salePrice",
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.add,
                        size: 12,
                      ),
                      Text(
                        "Add",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
