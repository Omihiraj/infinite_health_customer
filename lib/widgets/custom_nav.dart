import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';

class CustomNavBar extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;
  const CustomNavBar({
    Key? key,
    required this.index,
    required this.onChangedTab,
  }) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color.fromARGB(85, 158, 158, 158),
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: ClipRRect(
        child: BottomAppBar(
          height: 50,
          elevation: 20.0,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            tabItem(
              index: 0,
              icon: widget.index == 0
                  ? "assets/img/select-home.png"
                  : "assets/img/home.png",
              text: ('Home'),
            ),
            Container(
              width: 1,
              height: 35,
              color: const Color.fromARGB(115, 158, 158, 158),
            ),
            tabItem(
              index: 1,
              icon: widget.index == 1
                  ? "assets/img/select-appointments.png"
                  : "assets/img/appointments.png",
              text: ('Appointments'),
            ),
            Container(
              width: 1,
              height: 35,
              color: const Color.fromARGB(115, 158, 158, 158),
            ),
            tabItem(
              index: 2,
              icon: widget.index == 2
                  ? "assets/img/select-market.png"
                  : "assets/img/market.png",
              text: ('Market'),
            ),
            Container(
              width: 1,
              height: 35,
              color: const Color.fromARGB(115, 158, 158, 158),
            ),
            tabItem(
              index: 3,
              icon: widget.index == 3
                  ? "assets/img/select-cart.png"
                  : "assets/img/cart.png",
              text: ('Cart'),
            ),
            Container(
              width: 1,
              height: 35,
              color: const Color.fromARGB(115, 158, 158, 158),
            ),
            tabItem(
              index: 4,
              icon: widget.index == 4
                  ? "assets/img/select-user.png"
                  : "assets/img/user.png",
              text: ('Profile'),
            )
          ]),
        ),
      ),
    );
  }

  Widget tabItem(
      {required int index, required String icon, required String text}) {
    final isSelected = index == widget.index;
    return IconTheme(
      data: IconThemeData(
        color: isSelected ? primaryColor : Colors.grey,
      ),
      // child: IconButton(
      //   iconSize: 38,
      //   icon: icon,
      //   onPressed: () => widget.onChangedTab(index),
      // ),
      child: InkWell(
          onTap: () => widget.onChangedTab(index),
          child: Image.asset(
            icon,
          )),
    );
  }
}
