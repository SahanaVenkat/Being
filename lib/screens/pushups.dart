import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PushUps extends StatefulWidget {
   final String url; 
  
   PushUps({Key key, this.url = ''}): super(key:key);
  @override
  _PushUpsState createState() => _PushUpsState();
}

class _PushUpsState extends State<PushUps> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
    initialVideoId : 'wmNoe3JYe4c',
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