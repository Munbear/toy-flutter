import 'package:basic_layout/router/router_screen3.dart';
import 'package:flutter/material.dart';

class HighTeenItem extends StatefulWidget {
  final Map<String, dynamic> item;
  const HighTeenItem({Key? key, required this.item}) : super(key: key);

  @override
  State<HighTeenItem> createState() => _HighTeenItemState();
}

class _HighTeenItemState extends State<HighTeenItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return RouteScreen3();
            },
          ),
        );
      },
      child: Column(
        children: [
          Container(
            width: 147,
            height: 82,
            color: Colors.blue,
            child: Image(
              image: AssetImage(widget.item['image']),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 147,
            child: Text(
              widget.item['title'],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          SizedBox(height: 5),
          SizedBox(
            width: 147,
            child: Text(
              widget.item['tag'],
              style: TextStyle(fontSize: 13, color: Color(0xff9B9B9B)),
            ),
          ),
          SizedBox(
            width: 147,
            child: Text(
              widget.item['multitag'],
              style: TextStyle(fontSize: 13, color: Color(0xff9B9B9B)),
            ),
          ),
        ],
      ),
    );
  }
}
