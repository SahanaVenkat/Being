import 'package:flutter/material.dart';

class VideoGames extends StatefulWidget {
  @override
  _VideoGamesState createState() => _VideoGamesState();
}

class _VideoGamesState extends State<VideoGames> {
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
          'Video Games',
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
                  '* Set time limits for play and stick to them.\n ',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
                Text(
                  '* Keep your phones and other gadgets out of the bedroom so that you will not be tempted to play.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                Text(
                  '* Do other activities every day,including exercise.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
                Text(
                  '* Choose games with physical activity which can act as an exercise.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
                 Text(
                  '* Include your family - There are a lot of games that families can play together.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                 Text(
                  '* Find other hobbies - Start a collection of some sort,do some gardening,etc. \n',
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