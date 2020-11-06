import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Cardio extends StatefulWidget {
   final String url; 
  
   Cardio({Key key, this.url = ''}): super(key:key);
  @override
  _CardioState createState() => _CardioState();
}

class _CardioState extends State<Cardio> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
    initialVideoId : 'sjmsApWcyCU',
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