import 'package:flutter/material.dart';
import 'package:miniplayer/miniplayer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const double _playerMinHeight = 60.0;
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('mini player example'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.green,
              child: Center(
                child: ElevatedButton(
                  onPressed: () => print('is Clicked'),
                  child: const Text('Click'),
                ),
              ),
            ),
            Offstage(
              offstage: isShow,
              child: Miniplayer(
                maxHeight: MediaQuery.of(context).size.height,
                minHeight: _playerMinHeight,
                builder: (height, percentage) {
                  return Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            child: Text('$height $percentage', style: const TextStyle(color: Colors.red)),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isShow = true;
                              });
                            },
                            child: Icon(Icons.cancel),
                          )
                        ],
                      ),
                      const LinearProgressIndicator(
                        value: 0.4,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), backgroundColor: Colors.blue, label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), backgroundColor: Colors.blue, label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), backgroundColor: Colors.blue, label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), backgroundColor: Colors.blue, label: 'home')
        ],
      ),
    );
  }
}
