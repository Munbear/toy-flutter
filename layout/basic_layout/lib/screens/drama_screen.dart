import 'package:basic_layout/widgets/drama_widget/all_video_list.dart';
import 'package:flutter/material.dart';
import 'package:basic_layout/widgets/drama_widget/contents_list.dart';
import 'package:basic_layout/widgets/drama_widget/free_contents.dart';
import 'package:basic_layout/widgets/main_screen/carousel_widget.dart';
import 'package:basic_layout/widgets/main_screen/today_clip.dart';

class DramaTabScreen extends StatefulWidget {
  const DramaTabScreen({Key? key}) : super(key: key);

  @override
  State<DramaTabScreen> createState() => _DramaTabScreenState();
}

class _DramaTabScreenState extends State<DramaTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CarosuelScreen(),
              TodayClip(title: 'how do you think?'),
              SizedBox(height: 10),
              FreeContentsWidget(),
              SizedBox(height: 10),
              ContentsList(),
            ],
          ),
        ),
      ),
    );
  }
}
