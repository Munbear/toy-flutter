import 'package:basic_layout/router/router_screen.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String? title;

  TitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 22, right: 22, top: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Wrap(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 5),
                child: const Image(image: AssetImage('images/image5.png')),
              ),
              Text(
                '$title',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Wrap(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  'More',
                  style: TextStyle(fontSize: 12, color: Color(0xff9B9B9B)),
                ),
              ),
              Image(image: AssetImage('images/arrow_next3.png')),
            ],
          ),
        ],
      ),
    );
  }
}
