import 'package:Being/widgets/cards/exercise_card.dart';
import 'package:flutter/material.dart';

class Exercise extends StatefulWidget {
  @override
  _ExerciseState createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E0F),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF0A0E0F),
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
          'Exercise',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.04,
          right: MediaQuery.of(context).size.width * 0.04,
        ),
        child: ListView(
          children: [
            exerciseCard(
              context,
              Color(0xFFF9844A),
              'Cardio',
              'assets/images/exercise/Man_on_a_Treadmill_Cartoon.svg',
            ),
            exerciseCard(
              context,
              Color(0xFF4D908E),
              'Push Ups',
              'assets/images/exercise/Man_Doing_Push_Ups_Cartoon.svg',
            ),
            exerciseCard(
              context,
              Color(0xFF277DA1),
              'Weight Lifting',
              'assets/images/exercise/Man_Lifting_Barbell_Cartoon.svg',
            ),
            exerciseCard(
              context,
              Color(0xFFF9C74F),
              'Sit Ups',
              'assets/images/exercise/Man_Doing_Sit_Ups_Cartoon.svg',
            ),
          ],
        ),
      ),
    );
  }
}
