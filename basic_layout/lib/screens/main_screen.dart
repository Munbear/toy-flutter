import 'package:basic_layout/screens/my_page.dart';
import 'package:basic_layout/screens/drama_screen.dart';
import 'package:basic_layout/screens/short_screen.dart';
import 'package:basic_layout/screens/reveiw_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/main_screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final screens = [
    const HomeScreen(),
    const DramaTabScreen(),
    const ShortsTabScreen(),
    const ReviewTanScreen(),
    MyPage(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Image(image: AssetImage('images/logo1.png')),
            Image(image: AssetImage('images/notice1.png')),
          ],
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        backgroundColor: Color(0xffffffff),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/home_icon3.png'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/drama_icon2.png'),
            ),
            label: 'Drama',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/shorts_icon2.png'),
            ),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/review_icon2.png'),
            ),
            label: 'Review',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'My',
          ),
        ],
      ),
    );
  }
}
