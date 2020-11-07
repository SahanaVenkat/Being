import 'package:Being/widgets/cards/mood_card.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class journal_entry extends StatefulWidget {
  @override
  _journal_entryState createState() => _journal_entryState();
}

// ignore: camel_case_types
class _journal_entryState extends State<journal_entry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E0F),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'Mood Journal',
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
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
                bottom: MediaQuery.of(context).size.height * 0.05,
                left: MediaQuery.of(context).size.width * 0.015,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Good Morning Brie!',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.035,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'How are you feeling?',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.035,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: moodCard(
                    context,
                    '😀',
                    'Happy',
                    Color(0xFFF06292),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: moodCard(
                    context,
                    '😂',
                    'Excited',
                    Color(0XFF009688),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: moodCard(
                    context,
                    '😎',
                    'Calm',
                    Color(0XFF9E9D24),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: moodCard(
                    context,
                    '😤',
                    'Angry',
                    Color(0xFFFF7043),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: moodCard(
                    context,
                    '😱',
                    'Surprised',
                    Color(0xFF2196F3),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: moodCard(
                    context,
                    '☹️',
                    'Sad',
                    Color(0XFFEF5350),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: moodCard(
                    context,
                    '😍',
                    'Grateful',
                    Color(0xFF7C4DFF),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: moodCard(context, '🙄', 'Confused', Color(0XFFE91E63)),
                ),
                Expanded(
                  flex: 1,
                  child: moodCard(
                    context,
                    '😴',
                    'Sleepy',
                    Color(0XFF9C27B0),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
