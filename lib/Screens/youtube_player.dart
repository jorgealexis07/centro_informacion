import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class youtube_player extends StatefulWidget {
  final String? youtubeURL;
  youtube_player(this.youtubeURL);

  @override
  State<youtube_player> createState() => _youtube_playerState();
}

class _youtube_playerState extends State<youtube_player> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId:
            YoutubePlayerController.convertUrlToId(widget.youtubeURL!)!,
        params: const YoutubePlayerParams(
          loop: true,
          color: 'transparent',
          desktopMode: true,
          strictRelatedVideos: true,
          showFullscreenButton: !kIsWeb,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: kIsWeb ? screenSize.height / 1.13 : screenSize.height,
      width: screenSize.width,
      child: YoutubePlayerControllerProvider(
        controller: _controller,
        child: YoutubePlayerIFrame(controller: _controller),
      ),
    );
  }
}
