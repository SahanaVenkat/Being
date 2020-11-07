import 'package:Being/screens/bmi_chart.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Widget bmiChart(BuildContext context) {
  double deviceHeight = MediaQuery.of(context).size.height;
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        PageTransition(
          child: BMIChart(),
          type: PageTransitionType.rightToLeft,
        ),
      );
    },
    child: Container(
      height: deviceHeight * 0.1,
      margin: EdgeInsets.only(
        top: deviceHeight * 0.015,
        bottom: deviceHeight * 0.015,
      ),
      padding: EdgeInsets.fromLTRB(
        deviceHeight * 0.05,
        deviceHeight * 0.025,
        deviceHeight * 0.05,
        deviceHeight * 0.025,
      ),
      decoration: BoxDecoration(
        color: Color(0XFF9E9D24).withOpacity(0.85),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'BMI Chart',
            style: TextStyle(
              color: Colors.white,
              fontSize: deviceHeight * 0.03,
            ),
          ),
          Icon(
            Icons.arrow_right_alt_outlined,
            size: deviceHeight * 0.035,
            color: Colors.white,
          ),
        ],
      ),
    ),
  );
}
