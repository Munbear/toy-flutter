import 'package:flutter/material.dart';

class SaveCard extends StatelessWidget {
  const SaveCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xffffffff),
      child: SizedBox(
        height: 188,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 86,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  color: Color(0xffFF552C),
                ),
              ),
              child: const Center(
                child: Text(
                  'Cau cua toi',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFF552C),
                  ),
                ), // 나의 어휘
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Cau da luu se hien thi o day',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff000000),
              ),
            ),
            const SizedBox(height: 3), // 단어 저장
            const Text(
              'Neu co tu vung khongblet hey nan nut',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff9B9B9B),
              ),
            ),
            const Text(
              'Bo vao gio de luv',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff9B9B9B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
