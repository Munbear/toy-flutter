import 'package:basic_layout/widgets/main_screen/higteen_item.dart';
import 'package:flutter/material.dart';

class HighTeenVideoList extends StatefulWidget {
  const HighTeenVideoList({Key? key}) : super(key: key);

  @override
  State<HighTeenVideoList> createState() => _HighTeenVideoListState();
}

class _HighTeenVideoListState extends State<HighTeenVideoList> {
  final List<Map<String, dynamic>> items = [
    {
      'image': 'images/teen1.png',
      'title': 'Da cao Khong do dur (1-35)',
      'tag': '#phim truyen hinh',
      'multitag': '#Bai giang co so',
    },
    {
      'image': 'images/teen2.png',
      'title': 'Mot ngay tol da kham pha ra (1-25)',
      'tag': '#phim truyen hinh',
      'multitag': '#Bai giang co so',
    },
    {
      'image': 'images/teen3.png',
      'title': 'NO.1 Hello, im seo jan',
      'tag': '#phim truyen hinh',
      'multitag': '#Bai giang co so',
    },
    {
      'image': 'images/teen1.png',
      'title': 'Da cao Khong do dur (1-35)',
      'tag': '#phim truyen hinh',
      'multitag': '#Bai giang co so',
    },
    {
      'image': 'images/teen2.png',
      'title': 'Mot ngay tol da kham pha ra (1-25)',
      'tag': '#phim truyen hinh',
      'multitag': '#Bai giang co so',
    },
    {
      'image': 'images/teen3.png',
      'title': 'NO.1 Hello, im seo jan',
      'tag': '#phim truyen hinh',
      'multitag': '#Bai giang co so',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      padding: EdgeInsets.only(left: 24),
      child: Container(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(width: 12);
          },
          itemBuilder: (context, index) {
            return HighTeenItem(item: items[index]);
          },
        ),
      ),
    );
  }
}
