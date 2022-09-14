import 'package:basic_layout/widgets/main_screen/shorts_list.dart';
import 'package:basic_layout/widgets/main_screen/today_clip.dart';
import 'package:basic_layout/widgets/main_screen/video_list.dart';
import 'package:flutter/material.dart';

import '../common/banner_widget.dart';
import 'carousel_widget.dart';
import 'hight_teen_video.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CarosuelScreen(),
            TodayClip(
              title: '"How is the weather today?"',
            ),
            SizedBox(height: 10),
            VideoList(),
            ColoredBox(
              color: Color(0xffF8F8F8),
              child: SizedBox(height: 10),
            ),
            ShortsVideoList(),
            ColoredBox(
              color: Color(0xffF8F8F8),
              child: SizedBox(height: 10),
            ),
            BannerWidget(),
            HightTeenVideos(),
          ],
        ),
      ),
    );
  }
}
