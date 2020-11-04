import 'package:flutter/material.dart';
import 'package:Being/widgets/cards/yoga_card.dart';

class Yoga extends StatefulWidget {
  @override
  _YogaState createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
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
          'Yoga',
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
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: yogaCard(
                    context,
                     'assets/images/yoga/Vajrasana1.png',
                      'Baddha Konasana',
                      'Relieves stress and reduce fatigue',
                       Color(0xFFFF5722),
                       ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: yogaCard(
                    context,
                     'assets/images/yoga/Balasana1.png',
                      'Balasana',
                      'Ease your stress and anxiety',
                       Color(0xFFFFB300)),
                )
              ],
            ), 
             Row(
              children: [
                Expanded(
                  flex: 1,
                  child: yogaCard(
                    context,
                     'assets/images/yoga/Bitilasana1.png',
                      'Bitilasana',
                      'Creates emotional balance',
                       Color(0xFF689F38)),
                )
              ],
            ),
             Row(
              children: [
                Expanded(
                  flex: 1,
                  child: yogaCard(
                    context,
                     'assets/images/yoga/Uttanasana1.png',
                      'Uttanasana',
                      'Calms the mind and soothes the nerves',
                       Color(0xFF26A69A)),
                )
              ],
            ),
             Row(
              children: [
                Expanded(
                  flex: 1,
                  child: yogaCard(
                    context,
                     'assets/images/yoga/Vrikshasana1.png',
                      'Vrikshasana',
                      'Builds self-confidence and esteem',
                       Color(0xFFBA68C8)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
