import 'package:flutter/material.dart';
import 'package:ih_customer/constants/sizes.dart';
import 'package:ih_customer/widgets/header.dart';

import '../../constants/colors.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen(
      {super.key,
      required this.isSpecial,
      required this.img,
      required this.title,
      required this.rate,
      required this.discount,
      required this.qty,
      required this.oldPrice,
      required this.salePrice});
  final bool isSpecial;
  final String img;
  final String title;
  final double rate;
  final int discount;
  final int qty;
  final int oldPrice;
  final int salePrice;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
              "Product Description",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            spacer,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: screenWidth,
                      height: screenHeight / 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: secondaryColor),
                      child: Center(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              width: screenWidth * 0.9,
                              height: screenHeight / 3 * 0.95,
                              widget.img,
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    widget.isSpecial == true
                        ? Positioned(
                            top: 0,
                            left: 7,
                            child: Image.asset("assets/market-img/special.png"))
                        : Container(),
                  ],
                ),
                spacer,
                SizedBox(
                  width: screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 2 * screenWidth / 3,
                          child: Text(
                            widget.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          )),
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
                              style:
                                  TextStyle(fontSize: 8, color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                spacer,
                Text(
                  "${widget.discount}% off",
                  style: const TextStyle(fontSize: 10),
                ),
                Text(
                  "Pack of ${widget.qty}",
                  style: const TextStyle(fontSize: 10),
                ),
                SizedBox(
                    width: screenWidth,
                    child: Row(
                      children: [
                        Text(
                          "₹ ${widget.oldPrice}",
                          style: const TextStyle(
                              decoration: TextDecoration.lineThrough),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "₹ ${widget.salePrice}",
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
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
            ),
            spacer,
            const Text("Product Description", style: TextStyle(fontSize: 17)),
            const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
            spacer,
            const Text(
              "Important Information",
              style: TextStyle(fontSize: 17),
            ),
            const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
            spacer,
            Row(
              children: [
                SizedBox(
                  width: screenWidth / 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text("Item Weight"), Text(":")],
                  ),
                ),
                const Text("800 Grams")
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: screenWidth / 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text("Size"), Text(":")],
                  ),
                ),
                const Text("4 Count (Pack of 1)")
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: screenWidth / 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text("Brand"), Text(":")],
                  ),
                ),
                const Text("Fresh")
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: screenWidth / 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text("Speciality"), Text(":")],
                  ),
                ),
                const Text("natural")
              ],
            )
          ],
        ),
      ),
    );
  }
}
