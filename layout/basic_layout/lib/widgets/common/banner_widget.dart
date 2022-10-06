import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xffFFFFFF),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 26),
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffFF552C),
          ),
          child: const Center(
            child: Text(
              'Banner',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xffffffff),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
