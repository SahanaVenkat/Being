import 'package:flutter/material.dart';

class BMIChart extends StatefulWidget {
  @override
  _BMIChartState createState() => _BMIChartState();
}

class _BMIChartState extends State<BMIChart> {
  @override
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
          'General BMI Chart',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
