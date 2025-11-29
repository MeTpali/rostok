// ignore_for_file: discarded_futures

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

@RoutePage()
class VideoPage extends StatefulWidget {
  final String url;
  const VideoPage({required this.url, super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late VideoPlayerController _controller;
  bool isPlaying = false;
  bool hasSound = true;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: const Color(0x00000000),
    body: Stack(
      children: [
        Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(children: [
            ],
          ),
        ),
      ],
    ),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
