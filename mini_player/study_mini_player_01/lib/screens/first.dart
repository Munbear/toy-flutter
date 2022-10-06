import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(height: 250, color: Colors.red),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          color: index.isOdd ? Colors.white : Colors.black12,
                          height: 100.0,
                          child: Center(
                            child: Text('$index', textScaleFactor: 5),
                          ),
                        );
                      },
                      childCount: 20,
                    ),
                  )
                ],
              ),
            ),
            // Expanded(
            //   child: ListView(
            //     children: [
            //       for (var i = 0; i < 20; i++) ...{
            //         Container(
            //           width: MediaQuery.of(context).size.width,
            //           height: 100,
            //           color: i.isOdd ? Colors.white : Colors.black12,
            //           child: Center(
            //             child: Text('$i'),
            //           ),
            //         ),
            //       },
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
