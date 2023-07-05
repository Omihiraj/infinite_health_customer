import 'package:flutter/material.dart';

import '../constants/colors.dart';

class GroupChats extends StatefulWidget {
  const GroupChats({super.key});

  @override
  State<GroupChats> createState() => _GroupChatsState();
}

class _GroupChatsState extends State<GroupChats> {
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
                child: Image.asset("assets/chat-img/group-chat.png",
                    width: 80, height: 80, fit: BoxFit.cover),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Doctors & Trainers",
                  style: TextStyle(
                      fontSize: 18,
                      color: secondaryColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("12.00 p.m"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
