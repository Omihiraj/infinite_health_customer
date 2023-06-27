import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/constants/sizes.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Privacy policy',
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
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
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
                          "assets/screen-img/privacy.png",
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Privacy policy',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Last Updated 1546132389',
                                style:
                                    TextStyle(fontSize: 10, color: color838383),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    spacer,
                    const Text(
                      'Lorem Ipsum is simply dummy text of the printing and type\n'
                      'setting industry. Lorem Ipsum is simply dummy text of the\n'
                      'printing and type setting industry. Lorem Ipsum is simply\n'
                      'dummy text of the printing and type setting industry. Lorem\n'
                      'Ipsum is simply dummy text of the printing and type setting\n'
                      'industry.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: color838383,
                        fontSize: 12,
                      ),
                    ),
                    spacer,
                    const Text(
                      'Lorem Ipsum is simply dummy text of the printing and type\n'
                      'setting industry. Lorem Ipsum is simply dummy text of the\n'
                      'printing and type setting industry. Lorem Ipsum is simply\n'
                      'dummy text of the printing and type setting industry. Lorem\n'
                      'Ipsum is simply dummy text of the printing and type setting\n'
                      'industry.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: color838383,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Center(
                      child: Column(
                        children: [
                          const Text(
                            'Read Privacy Policy',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 25,
                              width: 113,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: secondaryColor,
                              ),
                              child: const Center(
                                child: Text(
                                  'I Accept',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
