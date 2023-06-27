import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';

class CustomActionAppBar extends StatefulWidget {
  const CustomActionAppBar({
    super.key,
    this.text,
  });

  final String? text;

  @override
  State<CustomActionAppBar> createState() => _HeaderState();
}

class _HeaderState extends State<CustomActionAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("assets/screen-img/menu.png"),
          const SizedBox(
            width: 10,
          ),
          Text(
            widget.text ?? '',
            style: const TextStyle(
              color: secondaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Row(
            children: [
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
                  Image.asset("assets/screen-img/wishlish_black.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/screen-img/back.png"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
