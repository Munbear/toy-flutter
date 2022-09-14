import 'package:basic_layout/widgets/common/title_widget.dart';
import 'package:basic_layout/widgets/main_screen/video_item_list.dart';
import 'package:flutter/material.dart';

class VideoList extends StatefulWidget {
  const VideoList({Key? key}) : super(key: key);

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        children: [
          TitleWidget(title: 'TV Program and K-Drama'),
          VideItemList(),
        ],
      ),
    );
  }
}
