import 'package:flutter/material.dart';
import 'main.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Welecome to my app',
          body: 'This is the fist page',
          image: Image.asset('image/page1.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Welecome to my app',
          body: 'This is the second page',
          image: Image.asset('image/page2.jpg'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Welecome to my app',
          body: 'This is the third page',
          image: Image.asset('image/page3.jpg'),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Text('done'),
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MyPage()),
        );
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
          color: Colors.cyan,
          size: const Size(10, 10),
          activeSize: const Size(22, 10),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          activeColor: Colors.red),
      curve: Curves.bounceOut,
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.blue),
        imagePadding: EdgeInsets.only(top: 40),
        pageColor: Colors.orange);
  }
}
