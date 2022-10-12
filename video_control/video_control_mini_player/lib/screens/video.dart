import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializaVideoPlayerFuture;
  double playSpeed = 4.0;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/video_bear.mp4');

    _initializaVideoPlayerFuture = _controller.initialize();

    //자동 반복 재생
    _controller.setLooping(true);

    super.initState();

    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 300,
            height: 300,
            // VideoPlayerController가 초기화 하는 동안 보여줄 로딩 스피너 보여주기 위해
            // FutureBuilder 위젯 사용
            child: FutureBuilder(
              future: _initializaVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // 초기화가 끝나면 제공된 데이터를 사용해
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    // 영상을 보여줌
                    child: VideoPlayer(_controller),
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          Container(
            height: 10,
            color: Colors.red,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Duration currentPostion = _controller.value.position;
                  Duration targetPositoin = currentPostion - const Duration(seconds: 10);
                  _controller.seekTo(targetPositoin);
                },
                icon: const Icon(Icons.replay_10),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (playSpeed != 0) {
                      _controller.setPlaybackSpeed(playSpeed--);
                    } else {
                      null;
                    }
                  });
                },
                icon: const Icon(Icons.fast_rewind),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (_controller.value.isPlaying) {
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                },
                icon: Icon((_controller.value.isPlaying ? Icons.pause : Icons.play_arrow)),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _controller.setPlaybackSpeed(playSpeed++);
                  });
                },
                icon: const Icon(Icons.fast_forward),
              ),
              IconButton(
                onPressed: () {
                  Duration currentPostion = _controller.value.position;
                  Duration targetPositoin = currentPostion + const Duration(seconds: 10);
                  _controller.seekTo(targetPositoin);
                },
                icon: const Icon(Icons.forward_10),
              ),
            ],
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('back to Home Screen'),
            ),
          ),
        ],
      ),
    );
  }
}
