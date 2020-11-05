import 'package:Being/screens/Coffee.dart';
import 'package:Being/screens/smoking.dart';
import 'package:Being/screens/alcohol.dart';
import 'package:Being/screens/video_games.dart';
import 'package:Being/screens/work.dart';
import 'package:Being/widgets/cards/addiction_card.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Addiction extends StatefulWidget {
  @override
  _AddictionState createState() => _AddictionState();
}

class _AddictionState extends State<Addiction> {
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
          'Addiction',
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
                    'Lets overcome them',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.035,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Together!',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.035,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
             onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: Smoking(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                  child: addictionCard(
                    context,
                    'assets/images/addictions/Smoking1.png',
                    'Smoking',
                     Color(0xFFFF5722)
                  ),
                 ),
                 GestureDetector(
             onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: Alcohol(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                  child: addictionCard(
                    context,
                    'assets/images/addictions/Alcohol1.png',
                    'Alcohol',
                     Color(0xFFFFB300)
                  ),
                 ),
                 GestureDetector(
             onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: Coffee(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                  child: addictionCard(
                    context,
                    'assets/images/addictions/Coffee1.png',
                    'Coffee',
                     Color(0xFF689F38)
                     ),
                 ),
                 GestureDetector(
             onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: VideoGames(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                  child: addictionCard(
                    context,
                    'assets/images/addictions/VideoGames1.png',
                    'Video Games',
                     Color(0xFF26A69A)
                  ),
                 ),
                 GestureDetector(
             onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: Work(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                  child: addictionCard(
                    context,
                    'assets/images/addictions/Work1.png',
                    'Work',
                     Color(0xFFBA68C8)
                  ),
                 )
               ]
             )
           )
         );
       }
    }

