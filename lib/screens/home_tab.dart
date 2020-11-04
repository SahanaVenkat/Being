import 'package:flutter/material.dart';
import 'package:Being/widgets/cards/action_suggestion_card.dart';
import 'package:Being/widgets/buttons/navigate_to_journal_entry.dart';

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
                onTap: () {},
                child: actionSuggestion(
                  context,
                  Color(0XFF757575),
                  '🏃‍♀️',
                  'Sweat It Out',
                ),
              ),
              actionSuggestion(
                context,
                Color(0XFF757575),
                '⚖️',
                'Track Your Weight',
              ),
              actionSuggestion(
                context,
                Color(0XFF757575),
                '😴',
                'Get Some Sleep',
              ),
              actionSuggestion(
                context,
                Color(0XFF757575),
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
                Color(0XFF757575),
                '🧘🏽‍♂️',
                'Calm Your Mind',
              ),
              actionSuggestion(
                context,
                Color(0XFF757575),
                '😌',
                'Breathe Easy',
              ),
              GestureDetector(
                onTap: () {},
                child: actionSuggestion(
                  context,
                  Color(0XFF757575),
                  '🙏',
                  'Hold Your Balance',
                ),
              ),
              actionSuggestion(
                context,
                Color(0XFF757575),
                '🚬',
                'Break Free',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
