import 'package:flutter/material.dart';

Widget addictionCard(
  BuildContext context, String addictionImage, String addiction, Color cardColor){
  return Container(
    height: MediaQuery.of(context).size.height * 0.13,
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                addictionImage,
                fit: BoxFit.fitHeight,
               ),
               Text(
                 addiction,
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                ),
               ),
            ],
          ),
        )
      ]
    )
);
        

}