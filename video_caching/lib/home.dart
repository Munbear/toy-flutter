import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_caching/test_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  // late VideoPlayerController videoController;
  late CachedVideoPlayerController cachedVideoController;
  var videoUri = "http://34.160.98.245/encoded/1677562323397_oLunKFl/manifest.m3u8";
  late Duration startTime;
  late Duration endTime;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    cachedVideoController = CachedVideoPlayerController.network(videoUri)
      ..initialize().then(
        (value) {
          setState(() {});
          cachedVideoController.play();
        },
      )
      ..setLooping(true);
    startTime = const Duration(seconds: 10);
    endTime = const Duration(seconds: 12);
    // cachedVideoController.addListener(() {
    //   setState(() {});
    // });
    cachedVideoController.play();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {}

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    cachedVideoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: CachedVideoPlayer(cachedVideoController),
          ),
          Row(
            children: [
              // 뒤로 배속
              IconButton(onPressed: () => cachedVideoController.setPlaybackSpeed(1), icon: const Icon(Icons.fast_rewind)),
              // 멈춤
              IconButton(onPressed: () => cachedVideoController.pause(), icon: const Icon(Icons.pause)),
              // 재생
              IconButton(onPressed: () => cachedVideoController.play(), icon: const Icon(Icons.play_arrow)),
              // 배속
              IconButton(onPressed: () => cachedVideoController.setPlaybackSpeed(1.5), icon: const Icon(Icons.fast_forward)),
              // 구간 반복
              IconButton(
                  onPressed: () {
                    cachedVideoController.seekTo(startTime);
                    cachedVideoController.setLooping(true);
                  },
                  icon: const Icon(Icons.replay)),
              // 10초 앞으로
              IconButton(
                onPressed: () => cachedVideoController.seekTo(cachedVideoController.value.position + const Duration(seconds: 10)),
                icon: const Icon(Icons.forward_10),
              ),
              // 10초 뒤로
              IconButton(
                onPressed: () => cachedVideoController.seekTo(cachedVideoController.value.position - const Duration(seconds: 10)),
                icon: const Icon(Icons.replay_10),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TestPage()),
              );
            },
            child: const Text("next page"),
          )
        ],
      ),
    );
  }
}
