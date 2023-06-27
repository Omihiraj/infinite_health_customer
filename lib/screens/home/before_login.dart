import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/constants/sizes.dart';

class BeforeLogin extends StatefulWidget {
  const BeforeLogin({super.key});

  @override
  State<BeforeLogin> createState() => _BeforeLoginState();
}

class _BeforeLoginState extends State<BeforeLogin> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: screenHeight * 3.1,
            child: Stack(
              children: [
                Positioned(
                    child: Image.asset(
                  "assets/home-img/header_side.png",
                  fit: BoxFit.cover,
                )),
                Positioned(
                    top: 70,
                    right: 0,
                    child: Image.asset(
                      "assets/home-img/right_leaf.png",
                    )),
                Positioned(
                    top: 120,
                    right: 20,
                    child: Image.asset(
                      "assets/home-img/medi_girl.png",
                    )),
                Positioned(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/home-img/location.png"),
                          const Text(
                            "Location",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const Text(
                        "Signup/Login",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )),
                Positioned(
                    top: 60,
                    left: 20,
                    child: Container(
                        width: screenWidth / 5 * 4.5,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: TextField(
                          decoration: InputDecoration(
                            prefix: Image.asset("assets/home-img/search.png"),
                            border: InputBorder.none,
                            hintText: 'Search',
                          ),
                        ))),
                Positioned(
                    top: 170,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Have an Issue ?",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        ),
                        Text(
                          "We can Help !",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        ),
                      ],
                    )),
                Positioned(
                    top: 300,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      width: screenWidth,
                      height: screenHeight * 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Container(
                              width: 75,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFC9C9C9),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          spacer,
                          spacer,
                          const Padding(
                            padding: sidePadding,
                            child: Text(
                              "Hello, there",
                              style: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: sidePadding,
                            child: Row(
                              children: [
                                const Text(
                                  "Sign in to avail free reward points",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset("assets/home-img/reward.png")
                              ],
                            ),
                          ),
                          spacer,
                          spacer,
                          SizedBox(
                            height: 150,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                docTypeItem(
                                    type: "Thairoid",
                                    img: "assets/home-img/thairoid.png"),
                                docTypeItem(
                                    type: "Diabetes",
                                    img: "assets/home-img/diabetes.png"),
                                docTypeItem(
                                    type: "Physico",
                                    img: "assets/home-img/physico.png"),
                                docTypeItem(
                                    type: "Thairoid",
                                    img: "assets/home-img/thairoid.png"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: sidePadding,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                docTypeItem(
                                    type: "Our Consultants",
                                    img: "assets/home-img/consultants.png"),
                                docTypeItem(
                                    type: "Market Place",
                                    img: "assets/home-img/market.png"),
                                docTypeItem(
                                    type: "Recipes",
                                    img: "assets/home-img/recipes.png")
                              ],
                            ),
                          ),
                          spacer,
                          spacer,
                          const Padding(
                            padding: sidePadding,
                            child: Divider(
                              height: 2,
                              color: Colors.black,
                            ),
                          ),
                          spacer,
                          spacer,
                          Padding(
                            padding: sidePadding,
                            child: Container(
                              width: screenWidth,
                              height: 120,
                              decoration: const BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  )),
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Image.asset(
                                          "assets/home-img/medi.png")),
                                  Positioned(
                                      top: 30,
                                      left: 60,
                                      child: Image.asset(
                                          "assets/home-img/medi_bag.png")),
                                  Positioned(
                                      top: 10,
                                      left: 200,
                                      child: Image.asset(
                                          "assets/home-img/banner_leaf.png")),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              "Live it",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "The King size",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "made with love for everyone !",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        Image.asset(
                                          "assets/home-img/banner.png",
                                          fit: BoxFit.fitWidth,
                                          height: 80,
                                          width: 90,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          spacer,
                          Padding(
                            padding: sidePadding,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              width: screenWidth,
                              height: 180,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/home-img/logo.png"),
                                  SizedBox(
                                    width: screenWidth / 3 * 1.5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "INFINITE HEALTH",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: secondaryColor),
                                        ),
                                        Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                            style: TextStyle(
                                                color: secondaryColor))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          spacer,
                          spacer,
                          const Padding(
                            padding: sidePadding,
                            child: Text(
                              "Few of INFINITE HEALTH",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Padding(
                            padding: sidePadding,
                            child: Text(
                              "success stories...",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                          spacer,
                          spacer,
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: SizedBox(
                              height: 150,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  successStories(),
                                  successStories(),
                                  successStories()
                                ],
                              ),
                            ),
                          ),
                          spacer,
                          spacer,
                          const Padding(
                            padding: sidePadding,
                            child: Divider(
                              color: Colors.black,
                              height: 2,
                            ),
                          ),
                          spacer,
                          const Padding(
                            padding: sidePadding,
                            child: Text(
                              "Upcoming Events",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                          spacer,
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: SizedBox(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  upComingEvents(),
                                  upComingEvents(),
                                  upComingEvents(),
                                ],
                              ),
                            ),
                          ),
                          spacer,
                          spacer,
                          const Padding(
                            padding: sidePadding,
                            child: Text(
                              "Blogs",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                          spacer,
                          spacer,
                          Padding(
                            padding: sidePadding,
                            child: SizedBox(
                              height: 220,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  blogItem(
                                      img: "assets/home-img/doc1.png",
                                      desc:
                                          "Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting.",
                                      title: "Lorem Ipsum"),
                                  blogItem(
                                      img: "assets/home-img/doc1.png",
                                      desc:
                                          "Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting.",
                                      title: "Lorem Ipsum"),
                                  blogItem(
                                      img: "assets/home-img/doc1.png",
                                      desc:
                                          "Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting.",
                                      title: "Lorem Ipsum")
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: sidePadding,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [Text("Read more >>")],
                            ),
                          ),
                          spacer,
                          spacer,
                          const Padding(
                            padding: sidePadding,
                            child: Divider(
                              height: 2,
                              color: Colors.black,
                            ),
                          ),
                          spacer,
                          spacer,
                          const Padding(
                            padding: sidePadding,
                            child: Text(
                              "Testimonials",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                          spacer,
                          Padding(
                            padding: sidePadding,
                            child: Column(
                              children: [
                                testomonialsItem(
                                    img: "assets/home-img/female-model.png",
                                    desc:
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                    screenWidth: screenWidth),
                                testomonialsItem(
                                    img:
                                        "assets/home-img/indian-businessman.png",
                                    desc:
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                    screenWidth: screenWidth),
                                testomonialsItem(
                                    img: "assets/home-img/smiley-man.png",
                                    desc:
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                    screenWidth: screenWidth)
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                const Divider(
                  height: 2,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget upComingEvents() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12.0,
      ),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: primaryColor,
        ),
        child: Stack(children: [
          SizedBox(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Lorem Ipsum is simply dummy text.",
                    style: TextStyle(
                        color: secondaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  spacer,
                  SizedBox(
                    width: 200,
                    child: Text(
                      "Lorem Ipsum is simply dummy text.Lorem Ipsum is simply dummy text.",
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  spacer,
                  Text(
                    "Know more",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: secondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 30,
              right: 15,
              child: Image.asset(
                height: 150,
                "assets/program-img/lady-doc.png",
                fit: BoxFit.cover,
              )),
          Positioned(
              left: 140,
              bottom: 30,
              child: Image.asset(
                "assets/program-img/doc_st.png",
              )),
          Positioned(
              left: 10,
              top: 60,
              child: Image.asset("assets/program-img/medi_box.png"))
        ]),
      ),
    );
  }

  Padding testomonialsItem(
      {required String img,
      required String desc,
      required double screenWidth}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        width: screenWidth,
        height: 110,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Container(
              width: 20,
              height: double.infinity,
              decoration: const BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
            ),
            Image.asset(
              img,
              height: double.infinity,
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 170,
                child: Text(
                  desc,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget blogItem(
      {required String img, required String title, required String desc}) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 220,
        width: 150,
        decoration: BoxDecoration(
            color: secondaryColor, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                width: 134,
                height: 120,
                img,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600),
            ),
            Text(
              desc,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget successStories() {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 250,
        height: 150,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Positioned(
                left: 10,
                top: 10,
                child: Image.asset("assets/home-img/medi_box.png")),
            Positioned(
                right: 10,
                bottom: 10,
                child: Image.asset("assets/home-img/medi_st.png")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Lorem Ipsum is simply dummy text.",
                        style: TextStyle(
                            color: secondaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      Text(
                        "Know More",
                        style: TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  "assets/home-img/lady-doc.png",
                  height: 200,
                  fit: BoxFit.fitHeight,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding docTypeItem({required String type, required String img}) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Column(
        children: [Image.asset(img), Text(type)],
      ),
    );
  }
}
