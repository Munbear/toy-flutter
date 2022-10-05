import 'package:flutter/material.dart';
import 'package:mini_player_example/first.dart';
import 'package:miniplayer/miniplayer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Route _createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => FirstScreen(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       final begin = const Offset(0.0, 1.0);
//       final end = Offset.zero;
//       final curve = Curves.ease;

//       final tween = Tween(begin: begin, end: end);
//       final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
//       final offsetAnimation = animation.drive(tween);
//       return SlideTransition(
//         position: tween.animate(curvedAnimation),
//         child: child,
//       );
//     },
//   );
// }

class _MyHomePageState extends State<MyHomePage> {
  bool isClicked = true;

  void onClick() {
    setState(() {
      isClicked = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home screen')),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: () {
                  onClick();
                },
                child: Container(
                  height: 215,
                  color: const Color(0xffcfffe5),
                  child: const Center(
                    child: Text('item1'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  onClick();
                },
                child: Container(
                  height: 215,
                  color: const Color(0xffcaafe5),
                  child: const Center(
                    child: Text('item1'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  onClick();
                },
                child: Container(
                  height: 215,
                  color: const Color(0xffcbbfe5),
                  child: const Center(
                    child: Text('item1'),
                  ),
                ),
              ),
            ],
          ),
          Offstage(
            offstage: isClicked,
            child: Miniplayer(
              onDismiss: () {
                // 서서희 밑으로 mini player가 사라짐
              },
              //valueNotifier: playerExpandProgress, 스크린 위로 올릴 시 BottomNavigationBar 사라지면서 스크린 올라감
              // 반대로 스크린 내릴 시 BottomNavigationBar가 생기면서 스크린 내려감
              minHeight: 70.0,
              maxHeight: MediaQuery.of(context).size.height,
              builder: (height, percentage) {
                return Center(
                    child: IconButton(
                  onPressed: (() {
                    setState(() {
                      isClicked = true;
                    });
                  }),
                  icon: const Icon(Icons.cancel),
                ));
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
