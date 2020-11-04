import 'package:flutter/material.dart';

Widget actionSuggestion(
  BuildContext context,
  Color cardColor,
  String emoji,
  String suggestion,
) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.2,
    width: MediaQuery.of(context).size.width * 0.4,
    padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.025),
    margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
    decoration: BoxDecoration(
      color: cardColor,
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          emoji,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.05,
          ),
        ),
        Text(
          suggestion,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.025,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
