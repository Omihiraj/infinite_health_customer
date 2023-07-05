import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../../widgets/header.dart';

class PaymentGetway extends StatefulWidget {
  const PaymentGetway({super.key});

  @override
  State<PaymentGetway> createState() => _PaymentGetwayState();
}

class _PaymentGetwayState extends State<PaymentGetway> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: sidePadding,
          child: Header(
              centerText: "Payment Getway",
              lastItem: Image.asset("assets/screen-img/back.png")),
        ),
        SizedBox(
          height: screenHeight / 1.3,
          child: Stack(
            children: [
              Positioned(
                top: -100,
                width: screenWidth,
                child: Image.asset(
                  "assets/img/vector.png",
                ),
              ),
              Positioned(
                top: 70,
                left: screenWidth / 2 - 160,
                child: Container(
                  width: 320,
                  height: 480,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 5)
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "UPI Payment",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            spacer,
                            SizedBox(
                              height: 145,
                              child: ListView(
                                children: [
                                  Container(
                                      padding: const EdgeInsets.all(10),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      decoration: BoxDecoration(
                                          color: paymentHeader,
                                          border:
                                              Border.all(color: secondaryColor),
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Shipping to :Lorem Ipsum is simply dummy text of ",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text(
                                                "Items :",
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Text(
                                                "₹ 340.00",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text(
                                                "Delivery :",
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Text(
                                                "₹ 40.00",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text(
                                                "Order Total :",
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Text(
                                                "₹ 380.00",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Image.asset("assets/payment-img/wallet.png"),
                    spacer,
                    const Text(
                      "Payment Requested!",
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    spacer,
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          border: Border.all(color: secondaryColor, width: 2),
                          borderRadius: BorderRadius.circular(70)),
                      child: const Center(
                          child: Text(
                        "₹ 380/-",
                        style: TextStyle(),
                      )),
                    ),
                    spacer,
                    const SizedBox(
                        width: 80,
                        child: Text(
                          "Paying to Dummy text",
                          textAlign: TextAlign.center,
                        ))
                  ]),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80.0),
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              width: 180,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  "Refresh",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
