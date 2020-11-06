import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Situp extends StatefulWidget {
   final String url; 
  
   Situp({Key key, this.url = ''}): super(key:key);
  @override
  _SitupState createState() => _SitupState();
}

class _SitupState extends State<Situp> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
    initialVideoId : 'UMaZGY6CbC4',
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