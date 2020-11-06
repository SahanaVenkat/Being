import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CustomOrientationPlayer3 extends StatefulWidget {
  final String url; 
  
  CustomOrientationPlayer3({Key key, this.url = ''}): super(key:key);

  @override
  _CustomOrientationPlayer3State createState() => _CustomOrientationPlayer3State();
}

class _CustomOrientationPlayer3State extends State<CustomOrientationPlayer3> {
  YoutubePlayerController _controller;


  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
    initialVideoId : '0kOOvLPN23Q',
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