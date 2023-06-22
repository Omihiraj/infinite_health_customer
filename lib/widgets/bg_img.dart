import 'package:flutter/material.dart';

class BgImg extends StatefulWidget {
  const BgImg(
      {super.key,
      required this.centerWidget,
      required this.isFooter,
      this.womanImgPath,
      this.showLogo});
  final Widget centerWidget;
  final bool isFooter;
  final bool? showLogo;
  final String? womanImgPath;

  @override
  State<BgImg> createState() => _BgImgState();
}

class _BgImgState extends State<BgImg> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        widget.showLogo == null
            ? Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/log-bg-img/logo.png"),
                ),
              )
            : Container(),
        Align(
          alignment: Alignment.topLeft,
          child: Image.asset("assets/log-bg-img/header_leaf.png"),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset("assets/log-bg-img/down_leaf.png"),
        ),
        Positioned(
          bottom: screenHeight / 3,
          left: 0,
          child: Image.asset("assets/log-bg-img/left_leaf.png"),
        ),
        Positioned(
          bottom: screenHeight / 3,
          right: 0,
          child: Image.asset("assets/log-bg-img/right_leaf.png"),
        ),
        Positioned(
            bottom: screenHeight / 2.6,
            left: screenWidth / 5,
            child: Image.asset("assets/log-bg-img/health_mask_1.png")),
        Positioned(
            bottom: screenHeight / 5,
            right: screenWidth / 15,
            child: Image.asset("assets/log-bg-img/doc.png")),
        Positioned(
            bottom: screenHeight / 5,
            left: screenWidth / 10,
            child: Image.asset("assets/log-bg-img/medi_box.png")),
        Positioned(
            bottom: screenHeight / 20,
            right: screenWidth / 3,
            child: Image.asset("assets/log-bg-img/health_mask_2.png")),
        Align(alignment: Alignment.center, child: widget.centerWidget),
        widget.womanImgPath != null
            ? Positioned(
                bottom: screenHeight / 10,
                left: screenWidth / 2.5,
                child: Image.asset(
                  widget.womanImgPath!,
                ),
              )
            : Container(),
        widget.isFooter
            ? Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/log-bg-img/footer.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              )
            : Container()
      ],
    );
  }
}
