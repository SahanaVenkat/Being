import 'package:Being/screens/addiction.dart';
import 'package:Being/screens/weight.dart';
import 'package:flutter/material.dart';
import 'package:Being/widgets/cards/action_suggestion_card.dart';
import 'package:Being/widgets/buttons/navigate_to_journal_entry.dart';
import 'package:page_transition/page_transition.dart';
import 'package:Being/screens/yoga.dart';
import 'package:Being/screens/exercise.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        addJournalEntry(context),
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.01,
          ),
          child: Text(
            'Get In Shape',
            style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height * 0.025,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.22,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: Exercise(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                child: actionSuggestion(
                  context,
                  Color(0XFF202020),
                  '🏃‍♀️',
                  'Sweat It Out',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: Weight(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                child: actionSuggestion(
                  context,
                  Color(0XFF202020),
                  '⚖️',
                  'Track Your Weight',
                ),
              ),
              actionSuggestion(
                context,
                Color(0XFF202020),
                '😴',
                'Get Some Sleep',
              ),
              actionSuggestion(
                context,
                Color(0XFF202020),
                '🥗',
                'Eat Healthy',
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.01,
          ),
          child: Text(
            'Be At Peace',
            style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height * 0.025,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.22,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              actionSuggestion(
                context,
                Color(0XFF202020),
                '🧘🏽‍♂️',
                'Calm Your Mind',
              ),
              actionSuggestion(
                context,
                Color(0XFF202020),
                '😌',
                'Breathe Easy',
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: Yoga(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                child: actionSuggestion(
                  context,
                  Color(0XFF202020),
                  '🙏',
                  'Hold Your Balance',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: Addiction(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                child: actionSuggestion(
                  context,
                  Color(0XFF202020),
                  '🚬',
                  'Break Free',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
