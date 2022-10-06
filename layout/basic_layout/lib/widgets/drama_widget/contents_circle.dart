import 'package:basic_layout/router/router_video.dart';
import 'package:flutter/material.dart';

class ContentsCircle extends StatefulWidget {
  const ContentsCircle({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;

  @override
  State<ContentsCircle> createState() => _ContentsCircleState();
}

class _ContentsCircleState extends State<ContentsCircle> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return RouterVideo();
        }));
      },
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 85,
                height: 85,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      // Color(0xffC9C9C9),
                      // Color(0xffC9C9C9),
                      Color(0xffff2222),
                      Color(0xffff7032),
                      Color(0xffFFA800),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment(0, 1),
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 6.5,
                top: 6.5,
                child: SizedBox(
                  width: 72,
                  height: 72,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(widget.data['image']),
                    radius: 50,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              widget.data['title'],
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xff2B2B2B),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
