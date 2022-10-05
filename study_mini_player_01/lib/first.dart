import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  void onChangeBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 10,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.yellow,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('First Screen'),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: GestureDetector(
              child: Container(
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
