import 'package:flutter/material.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:miniplayer_example_02/utils.dart';

final ValueNotifier<double> playerExpandProgress = ValueNotifier(playerMinHeight);
ValueNotifier<ListObject>? currentlyPlaying = ValueNotifier(null);
double playerMinHeight = 70;
double playerMaxHeight = 370;

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
                valueNotifier: playerExpandProgress,
                minHeight: playerMinHeight,
                maxHeight: MediaQuery.of(context).size.height,
                builder: (context, index) {
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 250,
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
            ValueListenableBuilder(
              valueListenable: currentlyPlaying,
              builder: (BuildContext context, ListObject? listObject, Widget? child) =>
                  listObject != null ? DetailedPlayer(listObject: listObject) : Container(),
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
