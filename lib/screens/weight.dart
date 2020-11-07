import 'package:Being/widgets/buttons/navigate_to_bmi_chart.dart';
import 'package:Being/widgets/cards/weight_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Weight extends StatefulWidget {
  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  @override

  // ignore: override_on_non_overriding_member
  String today;
  String time;

  void initState() {
    super.initState();
    DateTime now = DateTime.now();
    today = DateFormat('MMMMd').format(now).toString();
    // ignore: unused_local_variable
    DateTime current = DateTime.now();
    time = DateFormat('hh:mm').format(current).toString();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E0F),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close_outlined,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'Weight',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.05,
          right: MediaQuery.of(context).size.width * 0.04,
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.04,
                bottom: MediaQuery.of(context).size.height * 0.05,
                left: MediaQuery.of(context).size.width * 0.020,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.02,
                      top: MediaQuery.of(context).size.height * 0.01,
                      right: MediaQuery.of(context).size.height * 0.05,
                    ),
                    child: Text(
                      today,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.09,
                    ),
                    child: Icon(
                      Icons.timer,
                      color: Colors.white,
                      size: 28.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.02,
                      top: MediaQuery.of(context).size.height * 0.01,
                      right: MediaQuery.of(context).size.height * 0.05,
                    ),
                    child: Text(
                      time,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'BMI Calculator :',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.035,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                ),
                child: Row(
                children: [
                  Expanded(
                    child: weightCard(
                      context,
                      Color(0xFF43AA8B),
                    ),
                  ),
                ],
              ),
            ),
            Row(
             children: [
             bmiChart(context),
             Container(
             margin: EdgeInsets.only(
             top: MediaQuery.of(context).size.height * 0.01,
             ),
            )
          ],
        )
      ],
     ),
    ),
   );
  }
}
