import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:basic_layout/widgets/common/circle_widget.dart';

class CarosuelScreen extends StatefulWidget {
  const CarosuelScreen({Key? key}) : super(key: key);

  @override
  State<CarosuelScreen> createState() => _CarosuelScreenState();
}

class _CarosuelScreenState extends State<CarosuelScreen> {
  int currentIndex = 0;
  final List<Map<String, dynamic>> imgItems = [
    {'image': 'images/slide_image.png'},
    {'image': 'images/carousel_image1.png'},
    {'image': 'images/carousel_image2.png'},
    {'image': 'images/carousel_image3.png'},
  ];
  CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          carouselController: _controller,
          itemCount: imgItems.length,
          options: CarouselOptions(
            initialPage: currentIndex,
            aspectRatio: 375 / 220, // 사이즈
            viewportFraction: 1, // 몇상의 사진을 보여줄지
            autoPlay: true, // 자동 스크롤
            autoPlayAnimationDuration:
                const Duration(milliseconds: 900), // 스크롤 넘어가는 시간
            onPageChanged: (currentPage, resson) {
              setState(() {
                currentIndex = currentPage;
              });
            },
          ),
          itemBuilder: (context, index, realIndex) {
            final _items = imgItems[index];
            return FractionallySizedBox(
              widthFactor: 1,
              heightFactor: 1.0,
              child: Container(
                // color: Colors.blue,
                child: Image(
                  image: AssetImage(_items['image']),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
        Container(
          padding: const EdgeInsets.only(top: 210),
          child: Center(
            child: Wrap(
              spacing: 5.0,
              children: [
                for (int i = 0; i < 4; i++) ...{
                  CircleWidget(
                    color: currentIndex == i ? Colors.red : Colors.white,
                  )
                }
              ],
            ),
          ),
        ),
      ],
    );
  }
}
