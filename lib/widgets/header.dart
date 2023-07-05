import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';

class Header extends StatefulWidget {
  const Header(
      {super.key,
      required this.centerText,
      required this.lastItem,
      this.alignLeft,
      this.shadowOn});
  final String centerText;
  final Widget lastItem;
  final bool? alignLeft;
  final bool? shadowOn;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: widget.alignLeft == null
          ? Row(
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
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/screen-img/menu.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.centerText,
                      style: const TextStyle(
                          color: secondaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                widget.lastItem
              ],
            ),
    );
  }
}
