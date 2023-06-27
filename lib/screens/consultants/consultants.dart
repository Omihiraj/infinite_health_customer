import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/constants/sizes.dart';
import 'package:ih_customer/widgets/header.dart';

class Consultants extends StatefulWidget {
  const Consultants({super.key});

  @override
  State<Consultants> createState() => _ConsultantsState();
}

class _ConsultantsState extends State<Consultants> {
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
                centerText: "Our Cunsultants",
                alignLeft: true,
                lastItem: Row(
                  children: [
                    Image.asset("assets/consultants-img/chat.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/consultants-img/notification.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/consultants-img/back.png")
                  ],
                )),
            const Text(
                "Lorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text  Lorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text "),
            spacer,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "Sign up now by Registering with our experts !",
                  style: TextStyle(fontWeight: FontWeight.w600),
                )),
              ),
            ),
            spacer,
            spacer,
            SizedBox(
              height: screenHeight,
              child: Column(
                children: [
                  doctorItem(screenWidth),
                  doctorItem(screenWidth),
                  doctorItem(screenWidth),
                  doctorItem(screenWidth),
                  doctorItem(screenWidth),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget doctorItem(double screenWidth) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        width: screenWidth,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: primaryColor,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 12,
              height: double.infinity,
              decoration: const BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
            ),
            Image.asset("assets/consultants-img/doc1.png"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      "Dr.Butcher",
                      style: TextStyle(color: secondaryColor, fontSize: 18),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Endocrinologist",
                      style: TextStyle(color: secondaryColor, fontSize: 12),
                    )
                  ],
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      ignoreGestures: true,
                      itemSize: 15,
                      initialRating: 4.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.only(right: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        //print(rating);
                      },
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "4.5",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                spacer,
                Row(
                  children: [
                    SizedBox(
                      width: 165,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text("Experience"), Text(":")],
                      ),
                    ),
                    const Text("4yrs+")
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 165,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("People Signedin till date"),
                          Text(":")
                        ],
                      ),
                    ),
                    const Text("23")
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 165,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text("Sign up"), Text(":")],
                      ),
                    ),
                    const Text("Rs.1500/-")
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
