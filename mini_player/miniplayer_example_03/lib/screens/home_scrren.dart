import 'package:flutter/material.dart';

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
              AppBar(title: const Text('Mini Player Demo')),
              Expanded(
                child: AudioUi(
                  onTap: () => currentlyPlay.value = audioObject,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
