import 'package:flutter/material.dart';

// ignore: camel_case_types

Widget weightCard(BuildContext context, Color cardColor) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.15,
    padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.015),
    margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      color: cardColor,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '23.14',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.050,
            color: Colors.white,
          ),
        ),
        Text(
          'YOU ARE HEALTHY',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.022,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
