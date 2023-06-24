import 'package:flutter/material.dart';
import 'package:ih_customer/constants/sizes.dart';
import 'package:ih_customer/widgets/header.dart';
import 'package:pie_chart/pie_chart.dart';

class ProgressReport extends StatefulWidget {
  const ProgressReport({super.key});

  @override
  State<ProgressReport> createState() => _ProgressReportState();
}

class _ProgressReportState extends State<ProgressReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            Header(
                centerText: "Progress Report",
                lastItem: Image.asset("assets/screen-img/back.png")),
            spacer,
            const Text(
              "Pie chart report",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            spacer,
            spacer,
            PieChart(
              dataMap: dataMap,
              animationDuration: const Duration(milliseconds: 800),
              chartLegendSpacing: 32,
              chartRadius: MediaQuery.of(context).size.width / 2,
              colorList: colorList,

              initialAngleInDegree: 0,
              chartType: ChartType.disc,
              ringStrokeWidth: 32,

              legendOptions: const LegendOptions(
                showLegendsInRow: false,
                legendPosition: LegendPosition.bottom,
                showLegends: false,
                legendShape: BoxShape.circle,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              chartValuesOptions: const ChartValuesOptions(
                showChartValueBackground: true,
                showChartValues: true,
                showChartValuesInPercentage: true,
                showChartValuesOutside: false,
                decimalPlaces: 1,
              ),
              // gradientList: ---To add gradient colors---
              // emptyColorGradient: ---Empty Color gradient---
            ),
            spacer,
            spacer,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Wellness Management",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                spacer,
                progressItem(color: 0xFF3AB3DA, text: "Fitness"),
                spacer,
                progressItem(color: 0XFFEE3939, text: "Lifestyle & Stress"),
                spacer,
                progressItem(color: 0XFF00CE90, text: "Diet & Nutrition"),
                spacer,
                const Text(
                  "Disease & Treatment Management",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                spacer,
                progressItem(color: 0XFFBA007B, text: "Dummy text"),
                spacer,
                progressItem(color: 0XFF6D2D2D, text: "Dummy text"),
                spacer,
                progressItem(color: 0XFFEEF221, text: "Dummy text"),
                spacer,
                const Text(
                  "Other",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                spacer,
                progressItem(color: 0XFF000852, text: "Dummy text"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Row progressItem({required int color, required String text}) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 25,
          color: Color(color),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(text)
      ],
    );
  }

  Map<String, double> dataMap = {
    "Fitness": 36,
    "LifeStyle & Stress": 17,
    "Diet & Nutrition": 12,
    "Dummy1": 9,
    "Dummy2": 7,
    "Dummy3": 6,
    "Dummy4": 13,
  };

  List<Color> colorList = const [
    Color(0xFF3AB3DA),
    Color(0XFFEE3939),
    Color(0XFF00CE90),
    Color(0XFFBA007B),
    Color(0XFF6D2D2D),
    Color(0XFFEEF221),
    Color(0XFF000852),
  ];
}
