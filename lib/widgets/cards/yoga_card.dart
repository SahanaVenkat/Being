import 'package:flutter/material.dart';

Widget yogaCard(BuildContext context, String yogaPose, String poseName,
    String benefit, Color cardColor) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.18,
    padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.008),
    margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
    decoration: BoxDecoration(
      color: cardColor,
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          yogaPose,
          fit: BoxFit.fitHeight,
        ),
        Text(
          poseName,
          maxLines: 1,
          overflow: TextOverflow.clip,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.022,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          benefit,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.018,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
