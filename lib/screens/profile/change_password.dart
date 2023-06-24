import 'package:flutter/material.dart';
import 'package:ih_customer/constants/sizes.dart';

import '../../constants/colors.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: sidePadding,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  const Text(
                    "Change Password",
                    style: TextStyle(
                        color: secondaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Image.asset("assets/screen-img/back.png")
                ],
              ),
            ),
            SizedBox(
              height: 500,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Change Password",
                        style: TextStyle(
                            color: secondaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    spacer,
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: primaryColor,
                              border: Border.all(color: primaryColor),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Old Password",
                                contentPadding: EdgeInsets.only(left: 30)),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: primaryColor,
                              border: Border.all(color: primaryColor),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Old Password",
                                contentPadding: EdgeInsets.only(left: 30)),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: primaryColor,
                              border: Border.all(color: primaryColor),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Old Password",
                                contentPadding: EdgeInsets.only(left: 30)),
                          )),
                    ),
                    spacer,
                    Container(
                      width: 150,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: secondaryColor),
                      child: const Center(
                          child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
