import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CustomOrientationPlayer4 extends StatefulWidget {
  final String url; 
  
  CustomOrientationPlayer4({Key key, this.url = ''}): super(key:key);

  @override
  _CustomOrientationPlayer4State createState() => _CustomOrientationPlayer4State();
}

class _CustomOrientationPlayer4State extends State<CustomOrientationPlayer4> {
  YoutubePlayerController _controller;


  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
    initialVideoId : 'Dic293YNJI8',
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