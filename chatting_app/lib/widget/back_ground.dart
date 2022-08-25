import 'package:flutter/material.dart';

class BackGroundWidget extends StatefulWidget {
  const BackGroundWidget({Key? key, required this.isChecked}) : super(key: key);
  final bool isChecked;

  @override
  State<BackGroundWidget> createState() => _BackGroundWidgetState();
}

class _BackGroundWidgetState extends State<BackGroundWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Container(
        height: 300,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/red.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 90, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Welcome',
                  style: const TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: widget.isChecked
                          ? ' to yummu chat'
                          : ' to yummu chat',
                      style: const TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Text(
                widget.isChecked ? 'Signup to continue' : 'Login to continue',
                style: const TextStyle(
                  letterSpacing: 1,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
