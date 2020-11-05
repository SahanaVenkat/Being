import 'package:flutter/material.dart';
class Coffee extends StatefulWidget {
  @override
  _CoffeeState createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
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
          'Coffee',
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
                  '* Study the ingredients on foods and drinks and watch out for caffeine. \n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
                Text(
                  '* Plan your caffeine withdrawal in stages and decrease its consumption gradually. \n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                Text(
                  '* Consider changing from coffee in the morning to green tea.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
                Text(
                  '* Switch to decaf coffee,decaffeinated soda,or even better,water or fruit juices. \n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
                 Text(
                  '* Go for a morning run or fit in a quick workout to naturally boost your energy without caffeine.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                 Text(
                  '* Instead of large cup of coffee,next time order a small.\n',
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