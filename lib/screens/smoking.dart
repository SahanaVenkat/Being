import 'package:flutter/material.dart';

class Smoking extends StatefulWidget {
  @override
  _SmokingState createState() => _SmokingState();
}

class _SmokingState extends State<Smoking> {
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
          'Smoking',
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
                  '* Throw away your cigarettes, lighters, and ashtrays if you haven’t already.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
                Text(
                  '* Reduce Intensity and try to slow and steadily switch to healthy alternatives - cultivate strong Will\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                Text(
                  '* Spend time with non smoking friends and family\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
                Text(
                  '* Get plenty of rest and eat healthy. Being tired can trigger you to smoke.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
                 Text(
                  '* Avoid caffeine, which can make you feel jittery. Try drinking water instead.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                 Text(
                  '* Change your routine to avoid the things you might associate with smoking. \n',
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

