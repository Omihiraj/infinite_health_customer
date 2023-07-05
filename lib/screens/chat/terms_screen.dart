import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/constants/sizes.dart';

class TermsScreen extends StatefulWidget {
  const TermsScreen({Key? key}) : super(key: key);

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Terms of use',
        ),
        titleTextStyle: const TextStyle(
          color: secondaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: Colors.white,
        actions: [
          Image.asset("assets/screen-img/back.png"),
        ],
        leading: Image.asset("assets/screen-img/menu.png"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/screen-img/therms.png",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Terms of use',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Update 1546132389',
                          style: TextStyle(fontSize: 10, color: color838383),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              spacer,
              const Text(
                '1. Dummy text',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: secondaryColor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing and type\n'
                'setting industry. Lorem Ipsum is simply dummy text of the\n'
                'printing and type setting industry.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: color838383,
                  fontSize: 12,
                ),
              ),
              spacer,
              const Text(
                '2. Dummy text',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: secondaryColor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing and type\n'
                'setting industry. Lorem Ipsum is simply dummy text of the\n'
                'printing and type setting industry.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: color838383,
                  fontSize: 12,
                ),
              ),
              spacer,
              const Text(
                '3. Dummy text',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: secondaryColor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing and type\n'
                'setting industry. Lorem Ipsum is simply dummy text of the\n'
                'printing and type setting industry.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: color838383,
                  fontSize: 12,
                ),
              ),
              spacer,
              const Text(
                '4. Dummy text',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: secondaryColor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing and type\n'
                'setting industry. Lorem Ipsum is simply dummy text of the\n'
                'printing and type setting industry.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: color838383,
                  fontSize: 12,
                ),
              ),
              spacer,
              const Text(
                '5. Dummy text',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: secondaryColor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing and type\n'
                'setting industry. Lorem Ipsum is simply dummy text of the\n'
                'printing and type setting industry.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: color838383,
                  fontSize: 12,
                ),
              ),
              spacer,
              const Text(
                '6. Dummy text',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: secondaryColor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing and type\n'
                'setting industry. Lorem Ipsum is simply dummy text of the\n'
                'printing and type setting industry.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: color838383,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 130,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.copyright_rounded,
                    size: 15,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'All rights reserved by INFINITE HEALTH',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
