import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/constants/sizes.dart';
import 'package:ih_customer/screens/payment/payment_getway.dart';
import 'package:ih_customer/widgets/header.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: sidePadding,
          child: Header(
              centerText: "Checkout",
              lastItem: Image.asset("assets/screen-img/back.png")),
        ),
        SizedBox(
          height: screenHeight,
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
                  height: 580,
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
                              "Delivery Address",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            spacer,
                            SizedBox(
                              height: 145,
                              child: ListView(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: Text("Address 1",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: secondaryColor)),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: primaryColor),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10))),
                                        child: const Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                            style: TextStyle(
                                              fontSize: 10,
                                            )),
                                      )
                                    ],
                                  ),
                                  spacer,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: Text("Address 2",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: secondaryColor)),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: primaryColor),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10))),
                                        child: const Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                            style: TextStyle(
                                              fontSize: 10,
                                            )),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        height: 270,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Payment method",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            spacer,
                            SizedBox(
                              height: 220,
                              child: ListView(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: primaryColor),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/payment-img/visa.png",
                                          width: 30,
                                          height: 20,
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        const Text("**** **** **** 8878",
                                            style: TextStyle(
                                              fontSize: 10,
                                            )),
                                      ],
                                    ),
                                  ),
                                  spacer,
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: primaryColor),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/payment-img/upi.png",
                                          width: 30,
                                          height: 20,
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        const Text("**** **** **** 8878",
                                            style: TextStyle(
                                              fontSize: 10,
                                            )),
                                      ],
                                    ),
                                  ),
                                  spacer,
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: primaryColor),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/payment-img/google_pay.png",
                                          width: 30,
                                          height: 20,
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        const Text("**** **** **** 8878",
                                            style: TextStyle(
                                              fontSize: 10,
                                            )),
                                      ],
                                    ),
                                  ),
                                  spacer,
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: primaryColor),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/payment-img/paypal.png",
                                          width: 30,
                                          height: 20,
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        const Text("**** **** **** 8878",
                                            style: TextStyle(
                                              fontSize: 10,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PaymentGetway()));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        width: 220,
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            "Payment",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
