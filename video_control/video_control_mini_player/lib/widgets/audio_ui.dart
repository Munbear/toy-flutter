import 'package:flutter/material.dart';

import '../utils/player_util.dart';
import 'audio_tile.dart';
import 'thumnail_list.dart';

typedef OnTap(final AudioObject audioObject);

class AudioUi extends StatelessWidget {
  final OnTap onTap;
  const AudioUi({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, bottom: 6, top: 15),
          child: Text('Your Libray'),
        ),
        for (AudioObject a in audioExamples) AudioListTile(audioObject: a, onTap: () => onTap(a))
      ],
    );
  }
}
