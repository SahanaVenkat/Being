import 'package:flutter/material.dart';

Widget moodCard(
    BuildContext context, String emoji, String emotionText, Color cardColor,
    {Color borderColor = Colors.transparent}) {
  return GestureDetector(
    onTap: () {
      borderColor = Colors.redAccent;
    },
    child: Container(
      height: MediaQuery.of(context).size.height * 0.15,
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.025),
      margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
      decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: borderColor,
            width: 3.0,
          )),
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
            emotionText,
            maxLines: 1,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.018,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
