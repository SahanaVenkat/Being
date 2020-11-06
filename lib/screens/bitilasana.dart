import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CustomOrientationPlayer2 extends StatefulWidget {
  final String url; 
  
  CustomOrientationPlayer2({Key key, this.url = ''}): super(key:key);

  @override
  _CustomOrientationPlayer2State createState() => _CustomOrientationPlayer2State();
}

class _CustomOrientationPlayer2State extends State<CustomOrientationPlayer2> {
  YoutubePlayerController _controller;


  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
    initialVideoId : 'CvX9HcK0U6Q',
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