import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/constants/sizes.dart';
import 'package:ih_customer/widgets/drop_down.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  final List<String> program1 = [
    'Program 1',
    'Program 2',
    'Program 3',
    'Program 4',
  ];
  final List<String> program2 = [
    'Program 1',
    'Program 2',
    'Program 3',
    'Program 4',
  ];
  final List<String> program3 = [
    'Program 1',
    'Program 2',
    'Program 3',
    'Program 4',
  ];
  String? selectedProgram1;
  String? selectedProgram2;
  String? selectedProgram3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Why Infinite Health',
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Why Infinite Health ?',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                spacer,
                const Text(
                  'Lorem Ipsum is simply dummy text of the printing and\n'
                  'type setting industry. Lorem Ipsum is simply dummy text\n'
                  'of the printing and type setting industry.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                spacer,
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/screen-img/about_us_logo.png"),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'About us',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Text(
                            'Lorem Ipsum is simply dummy text of\n'
                            'the printing and type setting industry.\n'
                            'Lorem Ipsum is simply dummy text\n'
                            'of the printing',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                spacer,
                const Text(
                  'Programs we offer',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                AppDropDown(
                  horizontal: 1,
                  items: program1
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              e,
                            ),
                          ))
                      .toList(),
                  value: selectedProgram1,
                  onChanged: (value) {
                    setState(() {
                      selectedProgram1 = value;
                    });
                  },
                ),
                AppDropDown(
                  hint: 'Program 2',
                  horizontal: 1,
                  items: program2
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              e,
                            ),
                          ))
                      .toList(),
                  value: selectedProgram2,
                  onChanged: (value) {
                    setState(() {
                      selectedProgram2 = value;
                    });
                  },
                ),
                AppDropDown(
                  horizontal: 1,
                  hint: 'Program 3',
                  items: program3
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              e,
                            ),
                          ))
                      .toList(),
                  value: selectedProgram3,
                  onChanged: (value) {
                    setState(() {
                      selectedProgram3 = value;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                            'Click here',
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
                const Text(
                  'Success stories',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.black),
                ),
                spacer,
                Container(
                  height: 86,
                  width: 369,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: secondaryColor,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 68,
                                  width: 63,
                                  child:
                                      Image.asset("assets/screen-img/doc1.png"),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'our success stories',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'Lorem Ipsum is simply dummy text of '
                                        'the printing\nand type setting industry.',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Read more...',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 86,
                  width: 369,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: secondaryColor,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 68,
                                  width: 63,
                                  child:
                                      Image.asset("assets/screen-img/doc2.png"),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'our success stories',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'Lorem Ipsum is simply dummy text of '
                                        'the printing\nand type setting industry.',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Read more...',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 86,
                  width: 369,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: secondaryColor,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 68,
                                  width: 63,
                                  child:
                                      Image.asset("assets/screen-img/doc3.png"),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'our success stories',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'Lorem Ipsum is simply dummy text of '
                                        'the printing\nand type setting industry.',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Read more...',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                spacer,
                Center(
                  child: GestureDetector(
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
                          'Know more',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container successStories(Image image) {
    String? image;
    return Container(
      height: 86,
      width: 369,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: secondaryColor,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 68,
                      width: 63,
                      child: Image.asset(image ?? "assets/screen-img/doc1.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'our success stories',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Lorem Ipsum is simply dummy text of '
                            'the printing\nand type setting industry.',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Read more...',
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
