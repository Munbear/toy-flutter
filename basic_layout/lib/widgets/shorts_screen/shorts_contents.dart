import 'package:basic_layout/widgets/shorts_screen/category_short_video.dart';
import 'package:flutter/material.dart';

class ShortsVideoContetns extends StatefulWidget {
  const ShortsVideoContetns({Key? key}) : super(key: key);

  @override
  State<ShortsVideoContetns> createState() => _ShortsVideoContetnsState();
}

class _ShortsVideoContetnsState extends State<ShortsVideoContetns> {
  final List<Map<String, dynamic>> shortsItem = [
    {
      'id': 1,
      'image': 'images/carousel_image1.png',
      'title': 'NO.1 자니?',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 2,
      'image': 'images/carousel_image2.png',
      'title': '네, 접니다.',
      'tag': '#Bai giang co so'
    },
    {
      'id': 3,
      'image': 'images/carousel_image3.png',
      'title': '자니?',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 4,
      'image': 'images/teen1.png',
      'title': '일어났어?',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 5,
      'image': 'images/teen2.png',
      'title': 'NO.2 밥먹자',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 6,
      'image': 'images/teen3.png',
      'title': '공부하자!',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 7,
      'image': 'images/thumbnail.png',
      'title': 'What is going to happening?',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 8,
      'image': 'images/thumbnail2.png',
      'title': "Let's dance together!",
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 9,
      'image': 'images/slide_image.png',
      'title': 'some happened in the Party',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 10,
      'image': 'images/carousel_image1.png',
      'title': 'How is the NO.1 suspect?',
      'tag': '#Phim truten hinh giang co so'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color(0xffffffff),
      child: Container(
        height: 550,
        padding: EdgeInsets.only(left: 26, right: 26),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 175,
            childAspectRatio: 0.5,
            crossAxisSpacing: 15,
            mainAxisSpacing: 20,
          ),
          itemCount: shortsItem.length,
          itemBuilder: (context, index) {
            return CategoryShortList(items: shortsItem[index]);
          },
        ),
      ),
    );
  }
}
