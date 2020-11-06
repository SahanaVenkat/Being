import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CustomOrientationPlayer1 extends StatefulWidget {
  final String url; 
  
  CustomOrientationPlayer1({Key key, this.url = ''}): super(key:key);

  @override
  _CustomOrientationPlayer1State createState() => _CustomOrientationPlayer1State();
}

class _CustomOrientationPlayer1State extends State<CustomOrientationPlayer1> {
  YoutubePlayerController _controller;


  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
    initialVideoId : '33L6oog4sbY',
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