import 'package:basic_layout/router/router_screen.dart';
import 'package:basic_layout/router/router_screen2.dart';
import 'package:flutter/material.dart';

class VideItemList extends StatefulWidget {
  const VideItemList({Key? key}) : super(key: key);

  @override
  State<VideItemList> createState() => _VideItemListState();
}

class _VideItemListState extends State<VideItemList> {
  final List<Map<String, dynamic>> items = [
    {
      'image': 'images/image1.png',
      'title': 'Mot ngay tol da Kham pha ra(25-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'image': 'images/image3.png',
      'title': 'Da cao Khong do dur(35-1)',
      'tag': '#Bai giang co so'
    },
    {
      'image': 'images/image4.png',
      'title': 'Da cao Khong do dur(35-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'image': 'images/image1.png',
      'title': 'Mot ngay tol da Kham pha ra(25-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'image': 'images/image3.png',
      'title': 'Da cao Khong do dur(35-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'image': 'images/image4.png',
      'title': 'Da cao Khong do dur(35-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'image': 'images/image1.png',
      'title': 'Mot ngay tol da Kham pha ra(25-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'image': 'images/image3.png',
      'title': 'Da cao Khong do dur(35-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'image': 'images/image4.png',
      'title': 'Da cao Khong do dur(35-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'image': 'images/image1.png',
      'title': 'Mot ngay tol da Kham pha ra(25-1)',
      'tag': '#Phim truten hinh giang co so'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.only(left: 24),
      child: Container(
        height: 207,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(width: 12);
          },
          itemBuilder: (context, index) {
            final _item = items[index];
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return RouterScreen();
                    },
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 147,
                    child: Image(
                      image: AssetImage(_item['image']),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    width: 147,
                    child: Text(
                      _item['title'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    width: 137,
                    child: Text(
                      _item['tag'],
                      style: const TextStyle(
                          fontSize: 13, color: Color(0xff9B9B9B)),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
