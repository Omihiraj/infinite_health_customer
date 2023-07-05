import 'package:flutter/material.dart';

import 'package:ih_customer/constants/colors.dart';

import 'package:ih_customer/widgets/calls.dart';
import 'package:ih_customer/widgets/group_chats.dart';
import 'package:ih_customer/widgets/video_calls.dart';

import '../../widgets/all_chats.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> with WidgetsBindingObserver {
  int selectItem = 0;
  List<Widget> chatScreens = const [
    AllChats(),
    GroupChats(),
    Calls(),
    VideoCalls()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Message',
        ),
        titleTextStyle: const TextStyle(
          color: secondaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: Colors.white,
        actions: [
          Image.asset("assets/screen-img/chat.png"),
          Image.asset("assets/screen-img/notification.png"),
          Image.asset("assets/screen-img/wishlish_black.png"),
          Image.asset("assets/screen-img/back.png"),
        ],
        leading: Image.asset("assets/screen-img/menu.png"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
                height: 70,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    chatHItem(
                        itemName: "Chats",
                        img: "assets/chat-img/chat.png",
                        selectImg: "assets/chat-img/chat_select.png",
                        index: 0),
                    chatHItem(
                        itemName: "Group Chats",
                        img: "assets/chat-img/team.png",
                        selectImg: "assets/chat-img/team_select.png",
                        index: 1),
                    chatHItem(
                        itemName: "Calls",
                        img: "assets/chat-img/call.png",
                        selectImg: "assets/chat-img/call_select.png",
                        index: 2),
                    chatHItem(
                        itemName: "Video Calls",
                        img: "assets/chat-img/video.png",
                        selectImg: "assets/chat-img/video_select.png",
                        index: 3),
                  ],
                )),
            chatScreens[selectItem]
          ],
        ),
      ),
    );
  }

  Widget chatHItem(
      {required int index,
      required String img,
      required String itemName,
      required String selectImg}) {
    return InkWell(
      onTap: () {
        setState(() {
          selectItem = index;
        });
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            width: 85,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: selectItem == index ? primaryColor : Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 5))
                ]),
            child:
                selectItem == index ? Image.asset(selectImg) : Image.asset(img),
          ),
          Text(
            itemName,
            style: const TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
