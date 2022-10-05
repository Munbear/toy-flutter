import 'package:flutter/material.dart';
import 'package:study_mini_player_01/first.dart';

import 'mini_player_layout.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const FirstScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class _HomeState extends State<Home> {
  void onClickNavigator() {
    Navigator.of(context).push(_createRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => onClickNavigator(),
                  child: Container(
                    height: 200,
                    color: Colors.green,
                    child: Center(
                      child: Text('Item 1'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => onClickNavigator(),
                  child: Container(
                    height: 200,
                    color: Colors.yellow,
                    child: Center(
                      child: Text('Item 2'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => onClickNavigator(),
                  child: Container(
                    height: 200,
                    color: Colors.purple,
                    child: Center(
                      child: Text('Item 3'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // 1. 아이템을 누르면 밑에서 위로 화면을 꽉 체우면서 생김(위젯 생김)
          // 앱바 네이게이션 바텀도 사라짐
          // 2. 화면을 채우면서 BottomNavigationBar 밑으로 숨어짐
          // 3. 화면을 밑으로 드래그 하면 높이 70 정도만 남김
          // 4. 화면이 작아진 형태로 밑에 남은 상태에서는 닫기 버튼이 있음
          // 5. 닫기 버튼을 누르면 위젯 사라짐 (위젯 종료 )
          MiniPlayerLayout(),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   fixedColor: Colors.blue,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.mail),
      //       label: 'Messages',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     )
      //   ],
      // ),
    );
  }
}
