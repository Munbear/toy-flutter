import 'package:basic_layout/widgets/common/category_items.dart';
import 'package:basic_layout/widgets/drama_widget/all_video_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class CategoryHeader extends StatefulWidget {
  const CategoryHeader({Key? key}) : super(key: key);

  @override
  State<CategoryHeader> createState() => _CategoryHeaderState();
}

class _CategoryHeaderState extends State<CategoryHeader> {
  final List<Map<String, dynamic>> categoryItem = [
    {'category': 'All'},
    {'category': 'Hai'},
    {'category': 'du lich'},
    {'category': 'hiai tri'},
    {'category': 'lich su'},
    {'category': 'action'},
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color(0xffffffff),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 16, left: 26),
            child: const Text(
              'All Contents',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 36,
            margin: EdgeInsets.only(left: 26, bottom: 20),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categoryItem.length,
              separatorBuilder: (BuildContext context, int inedx) {
                return SizedBox(width: 8);
              },
              itemBuilder: (context, index) {
                return CategoryItems(category: categoryItem[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
