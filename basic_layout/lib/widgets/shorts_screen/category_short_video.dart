import 'package:basic_layout/router/router_short.dart';
import 'package:basic_layout/widgets/common/level_step.dart';
import 'package:flutter/material.dart';

class CategoryShortList extends StatefulWidget {
  const CategoryShortList({Key? key, required this.items}) : super(key: key);
  final Map<String, dynamic> items;

  @override
  State<CategoryShortList> createState() => _CategoryShortListState();
}

class _CategoryShortListState extends State<CategoryShortList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return RouterShortScreen();
          }));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  width: 162,
                  height: 86,
                  color: Colors.grey,
                  child: Image(
                    image: AssetImage(widget.items['image']),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  width: 40,
                  height: 40,
                  right: 0,
                  child: Image(
                    image: AssetImage('images/bookmark2.png'),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 6, bottom: 6),
              width: 157,
              height: 30,
              child: Text(
                widget.items['title'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Container(
              width: 157,
              height: 15,
              child: Text(
                widget.items['tag'],
                style: TextStyle(fontSize: 13, color: Color(0xff9B9B9B)),
              ),
            ),
            LevelStepWidget(),
          ],
        ),
      ),
    );
  }
}
