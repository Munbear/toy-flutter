import 'package:flutter/material.dart';
import 'package:miniplayer/miniplayer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isShowed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                for (var index = 0; index < 15; index++) ...{
                  Container(
                    height: 200,
                    color: index.isOdd ? Colors.white : Colors.black12,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isShowed = false;
                          });
                        },
                        child: const Text('Button'),
                      ),
                    ),
                  ),
                },
              ],
            ),
            Offstage(
              offstage: isShowed,
              child: Miniplayer(
                valueNotifier: ValueNotifier(MediaQuery.of(context).size.height),
                minHeight: 70,
                maxHeight: MediaQuery.of(context).size.height,
                builder: (context, index) {
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 70,
                          color: Colors.red,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isShowed = true;
                              });
                            },
                            icon: Icon(Icons.cancel),
                          ),
                        ),
                        Expanded(
                          child: CustomScrollView(
                            slivers: [
                              SliverList(
                                delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                                  return Container(
                                    color: index.isOdd ? Colors.white : Colors.black12,
                                    height: 100.0,
                                    child: Center(
                                      child: Text(
                                        '$index',
                                        textScaleFactor: 5,
                                      ),
                                    ),
                                  );
                                }, childCount: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
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
