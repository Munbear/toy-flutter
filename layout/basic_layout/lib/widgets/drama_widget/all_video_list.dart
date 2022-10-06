import 'package:basic_layout/widgets/drama_widget/category_video_list.dart';
import 'package:basic_layout/widgets/main_screen/video_item_list.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class AllVideoList extends StatefulWidget {
  const AllVideoList({Key? key}) : super(key: key);

  @override
  State<AllVideoList> createState() => _AllVideoListState();
}

class _AllVideoListState extends State<AllVideoList> {
  final List<Map<String, dynamic>> videosItems = [
    {
      'id': 1,
      'image': 'images/image1.png',
      'title': 'Mot ngay tol da Kham pha ra(25-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 2,
      'image': 'images/image3.png',
      'title': 'Da cao Khong do dur(35-1)',
      'tag': '#Bai giang co so'
    },
    {
      'id': 3,
      'image': 'images/image4.png',
      'title': 'Da cao Khong do dur(35-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 4,
      'image': 'images/image1.png',
      'title': 'Mot ngay tol da Kham pha ra(25-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 5,
      'image': 'images/image3.png',
      'title': 'Da cao Khong do dur(35-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 6,
      'image': 'images/image4.png',
      'title': 'Da cao Khong do dur(35-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 7,
      'image': 'images/image1.png',
      'title': 'Mot ngay tol da Kham pha ra(25-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 8,
      'image': 'images/image3.png',
      'title': 'Da cao Khong do dur(35-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 9,
      'image': 'images/image4.png',
      'title': 'Da cao Khong do dur(35-1)',
      'tag': '#Phim truten hinh giang co so'
    },
    {
      'id': 10,
      'image': 'images/image1.png',
      'title': 'Mot ngay tol da Kham pha ra(25-1)',
      'tag': '#Phim truten hinh giang co so'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      padding: EdgeInsets.only(left: 26, right: 26),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 305,
          childAspectRatio: 0.5,
          crossAxisSpacing: 15,
          mainAxisSpacing: 20,
        ),
        itemCount: videosItems.length,
        itemBuilder: (context, index) {
          return CategoryVideoList(videosItem: videosItems[index]);
        },
      ),
    );
    // return Container(
    //     height: 540,
    //     color: Colors.pink,
    //     child: GridView.count(
    //       crossAxisCount: 2,
    //       children: [
    //         ...videosItems.map(
    //           (item) => CategoryVideoList(
    //             videosItem: item,
    //           ),
    //         )
    //       ],
    //     )
    //////////////////////////
    // child: ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: videosItems.length,
    //   itemBuilder: (context, index) {
    //     return CategoryVideoList(
    //       // videosItem: videosItems[index],
    //       videosItem: videosItems,
    //     );
    //   },
    // ),
    // Container(
    //   padding: EdgeInsets.only(top: 20),
    //   height: 500,
    //   color: Colors.green,
    //   child: Wrap(
    //     alignment: WrapAlignment.start, // horizontal space
    //     runSpacing: 20, // vertical space
    //     children: [
    //       Container(
    //         margin: EdgeInsets.only(left: 26),
    //         width: 154,
    //         height: 317,
    //         color: Colors.red,
    //       ),
    //     ],
    //   ),
    // );
  }
}
