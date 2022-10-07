import 'package:flutter/material.dart';

import '../utils.dart';
import '../widgets/player.dart';
import 'audio_screen.dart';

ValueNotifier<AudioObject?> currentlyPlaying = ValueNotifier(null);

const double playerMinHeight = 100;
double playerMaxHeight = 870;
const miniplayerPercentageDeclaration = 0.2;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              AppBar(title: const Text('Miniplayer Demo')),
              Expanded(
                child: AudioUi(
                  onTap: (audioObject) => currentlyPlaying.value = audioObject,
                ),
              ),
            ],
          ),
          ValueListenableBuilder(
            valueListenable: currentlyPlaying,
            builder: (BuildContext context, AudioObject? audioObject, Widget? child) =>
                audioObject != null ? DetailedPlayer(audioObject: audioObject) : Container(),
          ),
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: playerExpandProgress,
        builder: (BuildContext context, double height, Widget? child) {
          final value = percentageFromValueInRange(min: playerMinHeight, max: playerMaxHeight, value: height);

          var opacity = 1 - value;
          if (opacity < 0) opacity = 0;
          if (opacity > 1) opacity = 2;

          return SizedBox(
            height: kMinInteractiveDimension - kMinInteractiveDimension * value,
            child: Transform.translate(
              offset: Offset(0.0, kMinInteractiveDimension * value * 0.2),
              child: Opacity(
                opacity: opacity,
                child: OverflowBox(
                  maxHeight: kMinInteractiveDimension,
                  child: GestureDetector(
                    child: child,
                    onTap: () {
                      print(height);
                    },
                  ),
                ),
              ),
            ),
          );
        },
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 0,
          selectedItemColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Feed'),
            BottomNavigationBarItem(icon: Icon(Icons.library_books), label: 'Library'),
          ],
        ),
      ),
    );
  }
}
