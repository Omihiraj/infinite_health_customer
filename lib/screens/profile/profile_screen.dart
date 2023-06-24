import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/constants/sizes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: sidePadding,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(color: secondaryColor, width: 2)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                                width: 50,
                                height: 50,
                                "assets/profile-img/profile.png"))),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Mr. Varun",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Image.asset("assets/profile-img/edit.png")
              ],
            ),
            spacer,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                smallBtn(
                    text: "My Orders",
                    leftIcon: "assets/profile-img/my_orders.png",
                    rightIcon: "assets/profile-img/side_arrow.png"),
                smallBtn(
                    text: "My Wishlist",
                    leftIcon: "assets/profile-img/wishlish.png",
                    rightIcon: "assets/profile-img/side_arrow.png")
              ],
            ),
            spacer,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                smallBtn(
                    text: "Subscription",
                    leftIcon: "assets/profile-img/subscription.png",
                    rightIcon: "assets/profile-img/side_arrow.png"),
                smallBtn(
                    text: "Appointments",
                    leftIcon: "assets/profile-img/appointment.png",
                    rightIcon: "assets/profile-img/side_arrow.png")
              ],
            ),
            spacer,
            spacer,
            Column(
              children: [
                largeBtn(
                    text: "Upload reports",
                    leftIcon: "assets/profile-img/upload.png",
                    rightIcon: "assets/profile-img/side_arrow.png"),
                const SizedBox(
                  height: 5,
                ),
                largeBtn(
                    text: "My schedule History",
                    leftIcon: "assets/profile-img/shedule.png",
                    rightIcon: "assets/profile-img/side_arrow.png"),
                const SizedBox(
                  height: 5,
                ),
                largeBtn(
                    text: "Target/Rewards & Score board",
                    leftIcon: "assets/profile-img/rewards.png",
                    rightIcon: "assets/profile-img/side_arrow.png"),
                const SizedBox(
                  height: 5,
                ),
                largeBtn(
                    text: "Progress report",
                    leftIcon: "assets/profile-img/progress.png",
                    rightIcon: "assets/profile-img/side_arrow.png"),
                const SizedBox(
                  height: 5,
                ),
                largeBtn(
                    text: "Feedback & contact",
                    leftIcon: "assets/profile-img/feedback.png",
                    rightIcon: "assets/profile-img/side_arrow.png"),
                const SizedBox(
                  height: 5,
                ),
                largeBtn(
                    text: "Settings",
                    leftIcon: "assets/profile-img/settings.png",
                    rightIcon: "assets/profile-img/side_arrow.png"),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  width: 365,
                  decoration: BoxDecoration(
                      border: Border.all(color: secondaryColor, width: 2),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(child: Text("Log Out")),
                )
              ],
            ),
            spacer,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("FAQs"),
                SizedBox(
                  height: 6,
                ),
                Text("About us"),
                SizedBox(
                  height: 6,
                ),
                Text("Terms of use"),
                SizedBox(
                  height: 6,
                ),
                Text("Privacy policy"),
                SizedBox(
                  height: 6,
                ),
                Text("Disclaimer"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container smallBtn(
      {required String text,
      required String leftIcon,
      required String rightIcon}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: 170,
      decoration: BoxDecoration(
          border: Border.all(color: secondaryColor, width: 2),
          borderRadius: BorderRadius.circular(8)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(leftIcon),
        Text(text),
        Image.asset(rightIcon),
      ]),
    );
  }

  Container largeBtn(
      {required String text,
      required String leftIcon,
      required String rightIcon}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: 365,
      decoration: BoxDecoration(
          border: Border.all(color: secondaryColor, width: 2),
          borderRadius: BorderRadius.circular(8)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Image.asset(leftIcon),
            const SizedBox(
              width: 20,
            ),
            Text(text),
          ],
        ),
        Image.asset(rightIcon),
      ]),
    );
  }
}
