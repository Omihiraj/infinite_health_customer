import 'package:flutter/material.dart';
import 'package:ih_customer/constants/sizes.dart';
import 'package:ih_customer/widgets/header.dart';

import '../../constants/colors.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: sidePadding,
        child: ListView(
          children: [
            Header(
                centerText: "Settings",
                lastItem: Image.asset("assets/screen-img/back.png")),
            const Text(
              "Account",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            profSettingBtn(
                text: "Profile",
                rightWidget: Image.asset("assets/profile-img/side_arrow.png")),
            const SizedBox(
              height: 5,
            ),
            profSettingBtn(
                text: "Change Password",
                rightWidget: Image.asset("assets/profile-img/side_arrow.png")),
            const SizedBox(
              height: 5,
            ),
            profSettingBtn(
                text: "Privacy",
                rightWidget: Image.asset("assets/profile-img/side_arrow.png")),
            spacer,
            const Text(
              "Notification",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            profSettingBtn(
                text: "Notification",
                rightWidget: Switch(
                  onChanged: toggleSwitch,
                  value: isSwitched,
                  activeColor: secondaryColor,
                  activeTrackColor: primaryColor,
                  inactiveThumbColor: secondaryColor,
                  inactiveTrackColor: Colors.grey,
                ),
                vPad: 0),
            const SizedBox(
              height: 5,
            ),
            profSettingBtn(
                text: "Data Permissions",
                rightWidget: Switch(
                  onChanged: toggleSwitch,
                  value: isSwitched,
                  activeColor: secondaryColor,
                  activeTrackColor: primaryColor,
                  inactiveThumbColor: secondaryColor,
                  inactiveTrackColor: Colors.grey,
                ),
                vPad: 0),
            spacer,
            const Text(
              "Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            profSettingBtn(text: "Language"),
            const SizedBox(
              height: 5,
            ),
            profSettingBtn(text: "Country"),
            const SizedBox(
              height: 5,
            ),
            profSettingBtn(text: "State"),
            const SizedBox(
              height: 5,
            ),
            profSettingBtn(text: "City"),
            spacer,
            const Text(
              "Privacy",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const Text("Visible on your profile"),
            profSettingBtn(
                text: "Email Address",
                rightWidget: Switch(
                  onChanged: toggleSwitch,
                  value: isSwitched,
                  activeColor: secondaryColor,
                  activeTrackColor: primaryColor,
                  inactiveThumbColor: secondaryColor,
                  inactiveTrackColor: Colors.grey,
                ),
                vPad: 0),
            const SizedBox(
              height: 5,
            ),
            profSettingBtn(
                text: "Phone number",
                rightWidget: Switch(
                  onChanged: toggleSwitch,
                  value: isSwitched,
                  activeColor: secondaryColor,
                  activeTrackColor: primaryColor,
                  inactiveThumbColor: secondaryColor,
                  inactiveTrackColor: Colors.grey,
                ),
                vPad: 0),
            const SizedBox(
              height: 5,
            ),
            profSettingBtn(
                text: "Age",
                rightWidget: Switch(
                  onChanged: toggleSwitch,
                  value: isSwitched,
                  activeColor: secondaryColor,
                  activeTrackColor: primaryColor,
                  inactiveThumbColor: secondaryColor,
                  inactiveTrackColor: Colors.grey,
                ),
                vPad: 0),
            const SizedBox(
              height: 5,
            ),
            profSettingBtn(
                text: "Birthday",
                rightWidget: Switch(
                  onChanged: toggleSwitch,
                  value: isSwitched,
                  activeColor: secondaryColor,
                  activeTrackColor: primaryColor,
                  inactiveThumbColor: secondaryColor,
                  inactiveTrackColor: Colors.grey,
                ),
                vPad: 0),
            const SizedBox(
              height: 5,
            ),
            profSettingBtn(
                text: "Location",
                rightWidget: Switch(
                  onChanged: toggleSwitch,
                  value: isSwitched,
                  activeColor: secondaryColor,
                  activeTrackColor: primaryColor,
                  inactiveThumbColor: secondaryColor,
                  inactiveTrackColor: Colors.grey,
                ),
                vPad: 0),
            const SizedBox(
              height: 5,
            ),
            profSettingBtn(
                text: "Relationship Status",
                rightWidget: Switch(
                  onChanged: toggleSwitch,
                  value: isSwitched,
                  activeColor: secondaryColor,
                  activeTrackColor: primaryColor,
                  inactiveThumbColor: secondaryColor,
                  inactiveTrackColor: Colors.grey,
                ),
                vPad: 0),
            const SizedBox(
              height: 20,
            ),
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
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }

  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  Widget profSettingBtn(
      {required String text,
      String? leftIcon,
      Widget? rightWidget,
      double? vPad,
      double? hPad,
      double? width}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: vPad ?? 15),
      width: width ?? 365,
      decoration: BoxDecoration(
          border: Border.all(color: secondaryColor, width: 2),
          borderRadius: BorderRadius.circular(8)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            leftIcon == null ? Container() : Image.asset(leftIcon),
            const SizedBox(
              width: 20,
            ),
            Text(text),
          ],
        ),
        rightWidget ?? Container(),
      ]),
    );
  }
}
