import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

class AllChats extends StatefulWidget {
  const AllChats({super.key});

  @override
  State<AllChats> createState() => _AllChatsState();
}

class _AllChatsState extends State<AllChats> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
        height: screenHeight - 170,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return chatItemBox();
            }));
  }

  Widget chatItemBox() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      child: Container(
        height: 110,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: primaryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  border: Border.all(color: secondaryColor, width: 3)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset("assets/consultants-img/doc1.png",
                    width: 80, height: 80, fit: BoxFit.cover),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    Text(
                      "Dr. Butcher ",
                      style: TextStyle(
                          fontSize: 18,
                          color: secondaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Endocrinologist",
                      style: TextStyle(fontSize: 10),
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
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text("12.00 p.m"), Text("Consultant")],
            )
          ],
        ),
      ),
    );
  }
}
