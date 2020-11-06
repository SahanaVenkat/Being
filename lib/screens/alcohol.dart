import 'package:flutter/material.dart';

class Alcohol extends StatefulWidget {
  @override
  _AlcoholState createState() => _AlcoholState();
}

class _AlcoholState extends State<Alcohol> {
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
          'Alcohol Consumption',
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
                  '*For Starters - Schedule one or two alcohol-free days each week.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
                Text(
                  '* Find new healthy activities to replace Alcohol\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                Text(
                  '* Build a Strong Support Team as quitting is much easier with the help of your friends and family\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
                Text(
                  '* Consult a doctor first because in some cases alcohol withdrwal can be dangerous.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
                 Text(
                  '* Practice self-care strategies by going for a long walk or meditating .\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                 Text(
                  '* Quitting alcohol is a long process for many people,and setbacks are common.do not give up!\n',
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