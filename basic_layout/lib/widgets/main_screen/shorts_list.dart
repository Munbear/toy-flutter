import 'package:basic_layout/widgets/common/circle_step_widget.dart';
import 'package:basic_layout/widgets/common/title_widget.dart';
import 'package:basic_layout/widgets/main_screen/short_item_list.dart';
import 'package:flutter/material.dart';

class ShortsVideoList extends StatefulWidget {
  const ShortsVideoList({Key? key}) : super(key: key);

  @override
  State<ShortsVideoList> createState() => _ShortsVideoListState();
}

class _ShortsVideoListState extends State<ShortsVideoList> {
  // final List<Map<String, dynamic>> items = [{"name" : ""}];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitleWidget(title: 'Shorts tuan nay'),
          ShortItemList(),
        ],
      ),
    );
  }
}
