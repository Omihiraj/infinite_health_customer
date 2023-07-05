import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';

import 'package:ih_customer/constants/sizes.dart';
import 'package:ih_customer/screens/payment/checkout_screen.dart';
import 'package:ih_customer/widgets/cart_box.dart';

import '../../widgets/header.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
          const CartBox(
            image: "assets/market-img/red_apple.png",
            title: "Fresh Apple Red, 4 pieces pack",
            discount: 17,
            price: 312,
            sellPrice: 260,
            qty: 4,
            rating: 4.5,
          ),
          spacer,
          const CartBox(
            image: "assets/market-img/banana.png",
            title: "Fresh Banana Robusta, 500 g",
            discount: 17,
            price: 120,
            sellPrice: 80,
            qty: 4,
            rating: 4.5,
          ),
          spacer,
          spacer,
          spacer,
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: primaryColor,
                ),
                borderRadius: BorderRadius.circular(30)),
            width: screenWidth,
            height: 50,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: screenWidth / 2.4,
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "PROMO CODE",
                            contentPadding: EdgeInsets.only(left: 30)),
                      )),
                  Container(
                    width: 180,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
                        child: Text(
                      "Apply",
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                ]),
          ),
          spacer,
          spacer,
          Container(
            width: screenWidth,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Sub Total",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "₹ 340",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Shipping",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "₹ 40",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Total",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "₹ 380",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                )
              ],
            ),
          ),
          spacer,
          spacer,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Cancel",
                  style: TextStyle(color: secondaryColor),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const CheckoutScreen())));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Proceed",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
