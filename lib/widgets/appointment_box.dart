import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

class AppointmentBox extends StatefulWidget {
  const AppointmentBox({super.key});

  @override
  State<AppointmentBox> createState() => _AppointmentBoxState();
}

class _AppointmentBoxState extends State<AppointmentBox> {
  bool isChatTouch = false;
  bool isVideoTouch = false;
  bool isCallTouch = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: 160,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2, color: primaryColor)),
      child: Row(
        children: [
          Container(
            width: 20,
            decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
          ),
          Column(
            children: [
              Image.asset("assets/consultants-img/doc1.png"),
              const SizedBox(
                height: 38,
              ),
              const Text(
                "Schedule Call",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
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
              spacer,
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isCallTouch = !isCallTouch;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 5),
                      decoration: BoxDecoration(
                          color: isCallTouch ? primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Image.asset("assets/img/call.png"),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isVideoTouch = !isVideoTouch;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 5),
                      decoration: BoxDecoration(
                          color: isVideoTouch ? primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Image.asset("assets/img/video.png"),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isChatTouch = !isChatTouch;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 5),
                      decoration: BoxDecoration(
                          color: isChatTouch ? primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ]),
                      child: isChatTouch
                          ? Image.asset("assets/img/bubble-chat.png")
                          : Image.asset("assets/img/bubble-chat.png"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
