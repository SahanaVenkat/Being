import 'package:flutter/material.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
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
          'Work',
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
              children: [
                 Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.05,
                    ),
                    child: Text(
                    'Tips',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.040,
                    ),
                ),
                 ),
                  Text(
                  '* Start and end days with something besides work.Ask yourself what really matters to you.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
                Text(
                  '* Take up a hobby like writing,photography or painting to keep your creative juices flowing outside the office.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                Text(
                  '* Volunteer at a local organization so you feel like your helping people in a tangible way.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
                 Text(
                  '* Breaking a work addiction is not just about changing your mindset.It requires altering habits too.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                 Text(
                  '* Spend time with your family and friends.Go on a vacation to clear your thoughts and relax.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
               ],
             ),
           ),
         ]
        )
      )
    );
  }
}