import 'package:flutter/material.dart';

Widget addJournalEntryButton(double deviceHeight) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(
      top: 15.0,
      bottom: 15.0,
    ),
    margin: EdgeInsets.only(
      top: deviceHeight * 0.025,
    ),
    decoration: BoxDecoration(
      color: Colors.redAccent,
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Text(
      'Add Entry',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
