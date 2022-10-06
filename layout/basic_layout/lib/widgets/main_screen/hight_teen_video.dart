import 'package:basic_layout/widgets/common/title_widget.dart';
import 'package:basic_layout/widgets/main_screen/highteen_video_list.dart';
import 'package:flutter/material.dart';

class HightTeenVideos extends StatefulWidget {
  const HightTeenVideos({Key? key}) : super(key: key);

  @override
  State<HightTeenVideos> createState() => _HightTeenVideosState();
}

class _HightTeenVideosState extends State<HightTeenVideos> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color(0xffffffff),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitleWidget(title: 'Hight teen videos'),
          HighTeenVideoList()
        ],
      ),
    );
  }
}
