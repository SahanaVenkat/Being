import 'package:Being/screens/journal_entry.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Widget addJournalEntry(BuildContext context) {
  double deviceHeight = MediaQuery.of(context).size.height;
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          PageTransition(
            child: journal_entry(),
            type: PageTransitionType.rightToLeft,
          ));
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
        color: Colors.redAccent.withOpacity(0.65),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.calendar_today_outlined,
            size: deviceHeight * 0.035,
            color: Colors.white,
          ),
          Text(
            'Log Your Mood',
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
