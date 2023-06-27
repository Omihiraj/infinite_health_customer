import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/constants/sizes.dart';

import '../../widgets/header.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: sidePadding,
        child: ListView(children: [
          Header(
              centerText: "My Cart",
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
            "All Categories",
            style: TextStyle(fontSize: 18),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: secondaryColor, width: 3),
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/market-img/red_apple.png")),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                        width: 150,
                        child: Text("Fresh Apple Red, 4 pieces pack")),
                    const Text("17% off"),
                    const Text("pack of 4"),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
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
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      "₹ 312",
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "₹ 260",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [Container()],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
