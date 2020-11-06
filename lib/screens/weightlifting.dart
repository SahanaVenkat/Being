import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Lifts extends StatefulWidget {
   final String url; 
  
   Lifts({Key key, this.url = ''}): super(key:key);
  @override
  _LiftsState createState() => _LiftsState();
}

class _LiftsState extends State<Lifts> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
    initialVideoId : 'U0bhE67HuDY',
    flags: YoutubePlayerFlags(
      autoPlay : true,
      mute : true,
    ),
  );
  }
  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator:true,
      progressColors: ProgressBarColors(
        playedColor: Colors.amber,
        handleColor:Colors.amberAccent,
      ),
      onReady: () {
         // _controller.addListener(listener); see if it works ok
      },      
    );
  }
}