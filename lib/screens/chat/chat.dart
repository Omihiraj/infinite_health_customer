import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';

class Chat extends StatefulWidget {
  final int id;
  const Chat({Key? key, required this.id}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> with WidgetsBindingObserver {
  late PageController _pageController;

  TabController? tabController;
  int currentIndex = 0;

  // @override
  // void initState() {
  //   currentIndex = widget.id < 0
  //       ? 0
  //       : widget.id > 4
  //           ? 4
  //           : widget.id;
  //   _pageController = PageController(initialPage: currentIndex);
  //   WidgetsBinding.instance.addObserver(this);
  //   _pageController = PageController();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   WidgetsBinding.instance.removeObserver(this);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Message',
        ),
        titleTextStyle: TextStyle(
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          currentIndex = index;
                          print(index);
                        });

                      } ,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.yellow,
                        ),

                      ),
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class Chat extends StatefulWidget {
//   final int id;
//   const Chat({Key? key, required this.id}) : super(key: key);
//
//   @override
//   State<Chat> createState() => _ChatState();
// }
//
// class _ChatState extends State<Chat> with WidgetsBindingObserver {
//   @override
//   Widget build(BuildContext context) {
//     late PageController _pageController;
//     int currentIndex = 0;
//
//     @override
//     void initState() {
//       currentIndex = widget.id < 0
//           ? 0
//           : widget.id > 4
//               ? 4
//               : widget.id;
//       _pageController = PageController(initialPage: currentIndex);
//       WidgetsBinding.instance.addObserver(this);
//       _pageController = PageController();
//       super.initState();
//     }
//
//     @override
//     void dispose() {
//       _pageController.dispose();
//       WidgetsBinding.instance.removeObserver(this);
//       super.dispose();
//     }
//
//     return Scaffold(
//
//     );
//   }
// }
