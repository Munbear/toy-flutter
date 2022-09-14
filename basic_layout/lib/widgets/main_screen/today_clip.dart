import 'package:flutter/material.dart';

class TodayClip extends StatelessWidget {
  const TodayClip({Key? key, required this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 26, top: 30, right: 0, bottom: 5),
            child: Text(
              "Today's Clip",
              style: TextStyle(
                color: Color(0xffFF552C),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 26),
            child: Text('$title',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27,
              top: 5,
              bottom: 25,
            ),
            child: Text(
              '#Phim truyen hinh giang co so',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xff9B9B9B),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
