import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';

class Header extends StatefulWidget {
  const Header({super.key, required this.centerText, required this.lastItem});
  final String centerText;
  final Widget lastItem;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/screen-img/menu.png"),
          Text(
            widget.centerText,
            style: const TextStyle(
                color: secondaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          widget.lastItem
        ],
      ),
    );
  }
}
