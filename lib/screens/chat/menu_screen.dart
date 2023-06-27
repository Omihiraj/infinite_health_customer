import 'package:flutter/material.dart';
import 'package:ih_customer/constants/sizes.dart';
import 'package:ih_customer/widgets/app_bar.dart';

import '../../constants/colors.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const CustomActionAppBar(
              text: 'Menu',
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: const BorderSide(
                  color: secondaryColor,
                ),
              ),
              elevation: 0,
              child: ListTile(
                title: const Text(
                  'Edit profile',
                  style: TextStyle(
                    fontSize: 13,
                    color: secondaryColor,
                  ),
                ),
                leading: Image.asset("assets/screen-img/edit_profile.png"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: secondaryColor,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: const BorderSide(
                  color: secondaryColor,
                ),
              ),
              child: ListTile(
                title: const Text(
                  'Messages',
                  style: TextStyle(
                    fontSize: 13,
                    color: secondaryColor,
                  ),
                ),
                leading: Image.asset("assets/screen-img/message.png"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: secondaryColor,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: const BorderSide(
                  color: secondaryColor,
                ),
              ),
              elevation: 0,
              child: ListTile(
                title: const Text(
                  'FAQs',
                  style: TextStyle(
                    fontSize: 13,
                    color: secondaryColor,
                  ),
                ),
                leading: Image.asset("assets/screen-img/faq.png"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: secondaryColor,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: const BorderSide(
                  color: secondaryColor,
                ),
              ),
              elevation: 0,
              child: ListTile(
                title: const Text(
                  'About us',
                  style: TextStyle(
                    fontSize: 13,
                    color: secondaryColor,
                  ),
                ),
                leading: Image.asset("assets/screen-img/about_us.png"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: secondaryColor,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: const BorderSide(
                  color: secondaryColor,
                ),
              ),
              elevation: 0,
              child: ListTile(
                title: const Text(
                  'Terms of use',
                  style: TextStyle(
                    fontSize: 13,
                    color: secondaryColor,
                  ),
                ),
                leading: Image.asset("assets/screen-img/therms.png"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: secondaryColor,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: const BorderSide(
                  color: secondaryColor,
                ),
              ),
              elevation: 0,
              child: ListTile(
                title: const Text(
                  'Privacy policy',
                  style: TextStyle(
                    fontSize: 13,
                    color: secondaryColor,
                  ),
                ),
                leading: Image.asset("assets/screen-img/privacy.png"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: secondaryColor,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: const BorderSide(
                  color: secondaryColor,
                ),
              ),
              elevation: 0,
              child: ListTile(
                title: const Text(
                  'Disclaimer',
                  style: TextStyle(
                    fontSize: 13,
                    color: secondaryColor,
                  ),
                ),
                leading: Image.asset("assets/screen-img/disclaimer.png"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: secondaryColor,
                  ),
                ),
              ),
            ),
            spacer,
            Center(
              child: Image.asset("assets/screen-img/my_logo.png"),
            ),
          ],
        ),
      ),
    );
  }
}
