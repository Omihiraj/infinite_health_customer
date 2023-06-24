import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/constants/sizes.dart';
import 'package:ih_customer/widgets/header.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: sidePadding,
        child: ListView(
          children: [
            Header(
                centerText: "Edit Profile",
                lastItem: Image.asset("assets/screen-img/back.png")),
            Center(
              child: Container(
                width: 355,
                height: 600,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 355,
                        height: 540,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 60,
                            ),
                            const Text(
                              "Mr. Varun",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            spacer,
                            textFieldItem(fieldName: "Full Name"),
                            textFieldItem(fieldName: "Email address"),
                            textFieldItem(fieldName: "Phone number"),
                            textFieldItem(fieldName: "Delivery Address"),
                            textFieldItem(fieldName: "Change password"),
                            textFieldItem(fieldName: "Language"),
                            textFieldItem(fieldName: "Country"),
                            textFieldItem(fieldName: "State"),
                            textFieldItem(fieldName: "City"),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 25,
                      left: 135,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            border:
                                Border.all(color: secondaryColor, width: 2)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: Image.asset(
                              "assets/profile-img/profile.png",
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            spacer,
            spacer,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: secondaryColor),
              child: const Center(
                  child: Text(
                "SAVE DETAILS",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ],
        ),
      ),
    );
  }

  Padding textFieldItem({required String fieldName}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 2),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black, width: 1)),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: fieldName,
            contentPadding: const EdgeInsets.only(left: 20, bottom: 8),
          ),
        ),
      ),
    );
  }
}
