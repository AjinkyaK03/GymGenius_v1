import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoOverlayWidget extends StatefulWidget {
  final String videoPath;

  const VideoOverlayWidget({super.key, required this.videoPath});

  @override
  State<VideoOverlayWidget> createState() => _VideoOverlayWidgetState();
}

class _VideoOverlayWidgetState extends State<VideoOverlayWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset(widget.videoPath)
          ..setLooping(true)
          ..setVolume(0)
          ..initialize().then((_) {
            setState(() {});
            _controller.play();
          });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 120,
        height: 120,
        color: Colors.transparent,
        child:
            _controller.value.isInitialized
                ? VideoPlayer(_controller)
                : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
