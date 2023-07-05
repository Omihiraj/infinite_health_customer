import 'package:flutter/material.dart';

import 'package:ih_customer/constants/sizes.dart';
import 'package:ih_customer/screens/chat/chat.dart';
import 'package:ih_customer/widgets/header.dart';

import '../../widgets/appointment_box.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: sidePadding,
        child: ListView(children: [
          Header(
              centerText: "Appointments",
              lastItem: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Chat()));
                      },
                      child: Image.asset("assets/img/chat.png")),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset("assets/img/back.png")
                ],
              )),
          const Text(
            "Upcoming",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const Text(
            "On Tue , 19 Aug 2023",
            style: TextStyle(fontSize: 12),
          ),
          spacer,
          const AppointmentBox(),
          spacer,
          spacer,
          const Text(
            "Upcoming",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const Text(
            "On Tue , 19 Aug 2023",
            style: TextStyle(fontSize: 12),
          ),
          spacer,
          const AppointmentBox(),
          spacer,
          const AppointmentBox(),
          spacer,
          const AppointmentBox(),
          spacer,
          const AppointmentBox(),
        ]),
      ),
    );
  }
}
