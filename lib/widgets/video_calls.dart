import 'package:flutter/material.dart';

import '../constants/colors.dart';

class VideoCalls extends StatefulWidget {
  const VideoCalls({super.key});

  @override
  State<VideoCalls> createState() => _VideoCallsState();
}

class _VideoCallsState extends State<VideoCalls> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
        height: screenHeight - 170,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return callItemBox();
            }));
  }

  Widget callItemBox() {
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
                  children: const [
                    Text(
                      "26th May 04:00 am",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset("assets/chat-img/video_select.png"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
