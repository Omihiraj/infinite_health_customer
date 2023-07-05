import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CartBox extends StatefulWidget {
  const CartBox(
      {super.key,
      required this.image,
      required this.title,
      required this.discount,
      required this.qty,
      required this.rating,
      required this.price,
      required this.sellPrice});
  final String image;
  final String title;
  final double discount;
  final int qty;
  final double rating;
  final double price;
  final double sellPrice;

  @override
  State<CartBox> createState() => _CartBoxState();
}

class _CartBoxState extends State<CartBox> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Colors.grey, offset: Offset(5, 5), blurRadius: 5),
          ]),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  border: Border.all(color: secondaryColor, width: 3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(widget.image)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 110,
                      child: Text(
                        widget.title,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${widget.discount.toInt()}% off",
                    style: const TextStyle(fontSize: 10),
                  ),
                  Text(
                    "pack of ${widget.qty}",
                    style: const TextStyle(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 8,
                          color: Colors.amber,
                        ),
                        Text(
                          "${widget.rating}",
                          style:
                              const TextStyle(fontSize: 8, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "₹ ${widget.price.toInt()}",
                    style:
                        const TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "₹ ${widget.sellPrice.toInt()}",
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Container(
                height: 90,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: primaryColor),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                          color: Colors.white),
                      child: const Icon(Icons.add),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("2"),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                          color: Colors.white),
                      child: const Icon(Icons.remove),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 5,
            right: 50,
            child: Row(
              children: const [
                Icon(
                  Icons.favorite,
                  size: 10,
                ),
                Text(
                  "move to wishlist",
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.delete,
                  size: 10,
                ),
                Text(
                  "delete",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
