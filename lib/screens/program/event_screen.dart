import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/constants/sizes.dart';
import 'package:ih_customer/widgets/header.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: sidePadding,
        child: ListView(
          children: [
            Header(
                centerText: "Events",
                lastItem: Image.asset("assets/screen-img/back.png")),
            spacer,
            const Text(
              "Upcoming events",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            spacer,
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listItem(),
                  listItem(),
                ],
              ),
            ),
            spacer,
            const Text(
              "Events for you",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            spacer,
            eventItem(
                img: "assets/program-img/event_runners.png",
                eventName: "Fitness",
                date: "29 June",
                time: "12:00pm to 3pm"),
            eventItem(
                img: "assets/program-img/event_medi.png",
                eventName: "Yoga",
                date: "29 June",
                time: "12:00pm to 3pm"),
            eventItem(
                img: "assets/program-img/event_eye.png",
                eventName: "Eye Checkup",
                date: "29 June",
                time: "12:00pm to 3pm"),
          ],
        ),
      ),
    );
  }

  Widget eventItem(
      {required String img,
      required String eventName,
      required String date,
      required String time}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Stack(
        children: [
          Positioned(
            top: 25,
            left: 50,
            child: Container(
              width: 300,
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: secondaryColor, width: 2)),
              child: Stack(
                children: [
                  Positioned(
                    left: 80,
                    top: 10,
                    child: Text(
                      eventName,
                      style: const TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 22),
                    ),
                  ),
                  Positioned(
                    left: 85,
                    top: 40,
                    child: Row(
                      children: [Text(date), Text(time)],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              width: 125,
              height: 125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(125),
                  border: Border.all(color: secondaryColor, width: 2)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(125),
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget listItem() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12.0,
      ),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: primaryColor,
        ),
        child: Stack(children: [
          SizedBox(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Lorem Ipsum is simply dummy text.",
                    style: TextStyle(
                        color: secondaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  spacer,
                  SizedBox(
                    width: 200,
                    child: Text(
                      "Lorem Ipsum is simply dummy text.Lorem Ipsum is simply dummy text.",
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  spacer,
                  Text(
                    "Know more",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: secondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 30,
              right: 15,
              child: Image.asset(
                height: 150,
                "assets/program-img/lady-doc.png",
                fit: BoxFit.cover,
              )),
          Positioned(
              left: 140,
              bottom: 30,
              child: Image.asset(
                "assets/program-img/doc_st.png",
              )),
          Positioned(
              left: 10,
              top: 60,
              child: Image.asset("assets/program-img/medi_box.png"))
        ]),
      ),
    );
  }
}
