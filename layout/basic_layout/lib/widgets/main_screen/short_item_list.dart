import 'package:basic_layout/widgets/main_screen/short_thumnail.dart';
import 'package:flutter/material.dart';

class ShortItemList extends StatefulWidget {
  const ShortItemList({Key? key}) : super(key: key);

  @override
  State<ShortItemList> createState() => _ShortItemListState();
}

class _ShortItemListState extends State<ShortItemList> {
  final List<Map<String, dynamic>> items = [
    {
      'image': 'images/thumbnail.png',
      'title': '"Are you up?',
      'translate': 'Ban dang ngu a?',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'image': 'images/thumbnail2.png',
      'title': 'Da cao Khong do dur(35-1)',
      'translate': 'Ban dang ngu a?',
      'tag': '#Bai giang co so',
    },
    {
      'image': 'images/thumbnail.png',
      'title': 'Mot ngay tol da Kham pha ra(25-1)',
      'translate': 'Ban dang ngu a?',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'image': 'images/thumbnail2.png',
      'title': 'Da cao Khong do dur(35-1)',
      'translate': 'Ban dang ngu a?',
      'tag': '#Bai giang co so'
    },
    {
      'image': 'images/thumbnail.png',
      'title': 'Mot ngay tol da Kham pha ra(25-1)',
      'translate': 'Ban dang ngu a?',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'image': 'images/thumbnail2.png',
      'title': 'Da cao Khong do dur(35-1)',
      'translate': 'Ban dang ngu a?',
      'tag': '#Bai giang co so'
    },
    {
      'image': 'images/thumbnail.png',
      'title': 'Mot ngay tol da Kham pha ra(25-1)',
      'translate': 'Ban dang ngu a?',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'image': 'images/thumbnail2.png',
      'title': 'Da cao Khong do dur(35-1)',
      'translate': 'Ban dang ngu a?',
      'tag': '#Bai giang co so'
    },
    {
      'image': 'images/thumbnail.png',
      'title': 'Mot ngay tol da Kham pha ra(25-1)',
      'translate': 'Ban dang ngu a?',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'image': 'images/thumbnail2.png',
      'title': 'Da cao Khong do dur(35-1)',
      'translate': 'Ban dang ngu a?',
      'tag': '#Bai giang co so'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      padding: EdgeInsets.only(left: 24),
      child: Container(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(width: 12);
          },
          itemBuilder: (context, index) {
            return ShortsThumnail(item: items[index]);
          },
        ),
      ),
    );
  }
}
