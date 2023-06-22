import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';

class OurCunsultants extends StatefulWidget {
  const OurCunsultants({super.key});

  @override
  State<OurCunsultants> createState() => _OurCunsultantsState();
}

class _OurCunsultantsState extends State<OurCunsultants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              width: 400,
              height: 100,
              child: Row(
                children: [
                  Image.asset("assets/screen-img/menu.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Our consultants",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/screen-img/chat.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset("assets/screen-img/notification.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset("assets/screen-img/back.png")
                    ],
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
                "Lorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text  Lorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text"),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: const Text(
              "Sign up now by Registering with our experts !",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(color: secondaryColor),
                child: Row(
                  children: const [
                    Text(
                      "Filter",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(children: [
                  Image.asset(""),
                  Column(
                    children: [Text("Dr. Butcher")],
                  )
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
