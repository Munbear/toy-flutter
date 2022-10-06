import 'package:basic_layout/enum/step_status.dart';
import 'package:basic_layout/router/router_screen2.dart';
import 'package:basic_layout/widgets/common/level_step.dart';
import 'package:flutter/material.dart';

class ShortsThumnail extends StatefulWidget {
  final Map<String, dynamic> item;
  const ShortsThumnail({Key? key, required this.item}) : super(key: key);

  @override
  State<ShortsThumnail> createState() => _ShortThumnailState();
}

class _ShortThumnailState extends State<ShortsThumnail> {
  Status _type = Status.first;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 280,
              height: 156,
              child: Image(
                image: AssetImage(widget.item['image']),
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: Container(
                color: Colors.black,
                width: 280,
                height: 156,
              ),
            ),
            const Positioned(
              width: 170,
              height: 51,
              left: 55,
              top: 51,
              child: Image(image: AssetImage('images/lock.png')),
            ),
            const Positioned(
              width: 40,
              height: 40,
              right: -1,
              top: 0,
              child: Image(image: AssetImage('images/bookmark2.png')),
            ),
          ],
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return RouterScreen2();
                },
              ),
            );
          },
          child: SizedBox(
            width: 280,
            child: Text(
              widget.item['title'],
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: 280,
          child: Text(
            widget.item['translate'],
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xff565656),
            ),
          ),
        ),
        const SizedBox(height: 7),
        SizedBox(
          width: 280,
          child: Text(
            widget.item['tag'],
            style: const TextStyle(fontSize: 12, color: Color(0xff9B9B9B)),
          ),
        ),
        LevelStepWidget(),
      ],
    );
  }
}
