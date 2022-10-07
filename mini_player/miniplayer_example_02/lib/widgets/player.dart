import 'package:flutter/material.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:miniplayer_example_02/utils.dart';

import '../screens/home.dart';

final ValueNotifier<double> playerExpandProgress = ValueNotifier(playerMinHeight);
final MiniplayerController controller = MiniplayerController();

class DetailedPlayer extends StatelessWidget {
  final ListObject listObject;
  const DetailedPlayer({super.key, required this.listObject});

  @override
  Widget build(BuildContext context) {
    // Miniplayer 위젯 추가
  }
}
