import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';
import 'package:ih_customer/widgets/bg_img.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: BgImg(
          centerWidget: ListView(
            children: [
              const SizedBox(
                height: 200,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "First Name",
                          contentPadding: EdgeInsets.only(left: 20)),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Last Name",
                          contentPadding: EdgeInsets.only(left: 20)),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: const TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Age",
                              contentPadding: EdgeInsets.only(left: 20)),
                        )),
                    Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: const TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Gender",
                              contentPadding: EdgeInsets.only(left: 20)),
                        )),
                    Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: const TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "D.O.B",
                              contentPadding: EdgeInsets.only(left: 20)),
                        )),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "D.O.B",
                          contentPadding: EdgeInsets.only(left: 20)),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Height",
                          contentPadding: EdgeInsets.only(left: 20)),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Weight",
                          contentPadding: EdgeInsets.only(left: 20)),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Health Issue",
                          contentPadding: EdgeInsets.only(left: 20)),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Upload photo",
                          prefixIcon:
                              Image.asset("assets/screen-img/gallery.png")),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 12),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(0, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: secondaryColor)),
                      child: Row(
                        children: [
                          Image.asset("assets/screen-img/browse.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Browse File",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 10),
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Image.asset("assets/screen-img/upload.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Upload",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email or Phone",
                          contentPadding: EdgeInsets.only(left: 20)),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Create Password",
                          contentPadding: EdgeInsets.only(left: 20)),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Confirm Password",
                          contentPadding: EdgeInsets.only(left: 20)),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 12),
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 12),
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          isFooter: false,
        ));
  }
}
