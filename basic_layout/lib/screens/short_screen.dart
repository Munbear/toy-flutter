import 'package:basic_layout/widgets/drama_widget/contents_list.dart';
import 'package:basic_layout/widgets/drama_widget/free_contents.dart';
import 'package:basic_layout/widgets/main_screen/carousel_widget.dart';
import 'package:basic_layout/widgets/main_screen/today_clip.dart';
import 'package:basic_layout/widgets/shorts_screen/shorts_contents.dart';
import 'package:flutter/material.dart';

import '../widgets/common/category_header.dart';

class ShortsTabScreen extends StatefulWidget {
  const ShortsTabScreen({Key? key}) : super(key: key);

  @override
  State<ShortsTabScreen> createState() => _ShortsTabScreenState();
}

class _ShortsTabScreenState extends State<ShortsTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CarosuelScreen(),
              TodayClip(title: 'this is shorts page'),
              SizedBox(height: 8),
              CategoryHeader(),
              ShortsVideoContetns(),
            ],
          ),
        ),
      ),
    );
  }
}
