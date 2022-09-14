import 'package:basic_layout/widgets/drama_widget/contents_circle.dart';
import 'package:flutter/material.dart';

class FreeContentsWidget extends StatefulWidget {
  const FreeContentsWidget({Key? key}) : super(key: key);

  @override
  State<FreeContentsWidget> createState() => _FreeContentsWidgetState();
}

class _FreeContentsWidgetState extends State<FreeContentsWidget> {
  final List<Map<String, dynamic>> dataItems = [
    {
      'image': 'images/image1.png',
      'title': 'drama title 1',
    },
    {
      'image': 'images/image3.png',
      'title': 'drama title 2',
    },
    {
      'image': 'images/image4.png',
      'title': 'drama title 3',
    },
    {
      'image': 'images/slide_image.png',
      'title': 'drama title 4',
    },
    {
      'image': 'images/teen1.png',
      'title': 'drama title 5',
    },
    {
      'image': 'images/teen2.png',
      'title': 'drama title 6',
    },
    {
      'image': 'images/teen3.png',
      'title': 'drama title 7',
    },
    {
      'image': 'images/carousel_image1.png',
      'title': 'drama title 8',
    },
    {
      'image': 'images/carousel_image2.png',
      'title': 'drama title 9',
    },
    {
      'image': 'images/carousel_image3.png',
      'title': 'drama title 10',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color(0xffffffff),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 40,
              child: Text(
                'Free Contents',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: dataItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 12);
                },
                itemBuilder: (context, index) {
                  return ContentsCircle(data: dataItems[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
