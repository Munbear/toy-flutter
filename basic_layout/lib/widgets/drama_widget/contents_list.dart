import 'package:basic_layout/widgets/common/category_header.dart';
import 'package:basic_layout/widgets/drama_widget/all_video_list.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ContentsList extends StatefulWidget {
  const ContentsList({Key? key}) : super(key: key);

  @override
  State<ContentsList> createState() => _ContentsListState();
}

class _ContentsListState extends State<ContentsList> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color(0xffffffff),
      child: Column(
        children: [
          // 여기에다가 스테치 효과 줌
          CategoryHeader(),
          AllVideoList(),
        ],
      ),
    );
  }
}
