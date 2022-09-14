import 'package:basic_layout/router/router_screen.dart';
import 'package:flutter/material.dart';

class CategoryVideoList extends StatefulWidget {
  const CategoryVideoList({Key? key, required this.videosItem})
      : super(key: key);
  final Map<String, dynamic> videosItem;

  @override
  State<CategoryVideoList> createState() => _CategoryVideoListState();
}

class _CategoryVideoListState extends State<CategoryVideoList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 157,
              height: 217,
              child: Image(
                image: AssetImage(widget.videosItem['image']),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 6, bottom: 6),
              width: 157,
              height: 52,
              child: Text(
                widget.videosItem['title'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              width: 157,
              height: 36,
              child: Text(
                widget.videosItem['tag'],
                style: TextStyle(fontSize: 13, color: Color(0xff9B9B9B)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
