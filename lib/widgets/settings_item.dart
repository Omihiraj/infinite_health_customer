import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SettingsIem extends StatefulWidget {
  const SettingsIem(
      {super.key,
      required this.text,
      this.leftIcon,
      this.rightWidget,
      this.vPad,
      this.hPad,
      this.width});
  final String text;
  final String? leftIcon;
  final Widget? rightWidget;
  final double? vPad;
  final double? hPad;
  final double? width;

  @override
  State<SettingsIem> createState() => _SettingsIemState();
}

class _SettingsIemState extends State<SettingsIem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: 10, vertical: widget.vPad ?? 15),
      width: widget.width ?? 365,
      decoration: BoxDecoration(
          border: Border.all(color: secondaryColor, width: 2),
          borderRadius: BorderRadius.circular(8)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            widget.leftIcon == null
                ? Container()
                : Image.asset(widget.leftIcon!),
            const SizedBox(
              width: 20,
            ),
            Text(widget.text),
          ],
        ),
        widget.rightWidget ?? Container(),
      ]),
    );
  }
}
