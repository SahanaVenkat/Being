import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget exerciseCard(
  BuildContext context,
  Color cardColor,
  String exerciseName,
  String assetPath,
) {
  double deviceHeight = MediaQuery.of(context).size.height;
  return Container(
    height: deviceHeight * 0.2,
    width: double.infinity,
    margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
    padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.025),
    decoration: BoxDecoration(
      color: cardColor,
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exerciseName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: SvgPicture.asset(
            assetPath,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
