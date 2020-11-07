import 'package:flutter/material.dart';

class WeightTips extends StatefulWidget {
  @override
  _WeightTipsState createState() => _WeightTipsState();
}

class _WeightTipsState extends State<WeightTips> {
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
          'Some Tips',
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
                    'Underweight - < 18.5kg/m2',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.030,
                    fontWeight: FontWeight.bold,
                    ),
                ),
              ),
              Text(
                  '* If you want to gain weight in a healthy way, you have to consume more calories than you burn every day.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
              Text(
                  '* Eat regularly and slowly increase your portion size.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
              Text(
                  '* Cut back on endurance exercise and focus on muscle growth.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
              Text(
                '* Eat plenty of protein after your workout. Healthy, high-quality protein sources include chicken, eggs, tofu, legumes, and nut butters. This will help you gain muscle. Combining protein and carbohydrates is also a good idea. \n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ), 
              Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                    bottom: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: Text(
                  'Healthy Weight -- 18.5-24.9kg/m2 ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.029,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                  '* Try and maintain your Diet and Exercise regularly.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                Text(
                  '* Watch out for portion distortion and do not over eat.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                    bottom: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: Text(
                  'Over Weight -- 18.5-24.9kg/m2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.030,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                  '* Watch out for portion distortion and do not over eat.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
              Text(
                  '* Eating whole eggs can have all sorts of benefits, including helping you lose weight.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                Text(
                  '* Drink Green Tea - Like coffee, green tea also has many benefits, one of them being weight loss.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                 Text(
                  '* Try Intermittent fasting - It is a popular eating pattern in which people cycle between periods of fasting and eating.\n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                    bottom: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: Text(
                  'Obesity -- 30.5-40.0kg/m2 ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.030,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                  '* Consume less “bad” fat and more “good” fat. \n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
              Text(
                  '* Consume less processed and sugary foods. Eat more servings of vegetables and fruits. \n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                 Text(
                  '* Eat plenty of dietary fiber and focus on eating low–glycemic index foods. \n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
                Text(
                  '* Doctor Consultation is must before trying any new diet or exercise. \n',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),

              ],
           ),
        ),
       ],
    ),
 ),
        );
  }
}