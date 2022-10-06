import 'package:flutter/material.dart';
import '../config/palette.dart';

class LoginButtonWidget extends StatefulWidget {
  const LoginButtonWidget({Key? key, required this.isChecked})
      : super(key: key);
  final bool isChecked;

  @override
  State<LoginButtonWidget> createState() => _LoginButtonWidgetState();
}

class _LoginButtonWidgetState extends State<LoginButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      top: widget.isChecked
          ? MediaQuery.of(context).size.height - 225
          : MediaQuery.of(context).size.height - 265,
      right: 0,
      left: 0,
      child: Column(
        children: [
          Text(widget.isChecked ? 'or Signup with' : 'or Signin with'),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.white,
              minimumSize: const Size(155, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: Palette.googleColor,
            ),
            icon: const Icon(Icons.add),
            label: const Text('Google'),
          ),
        ],
      ),
    );
  }
}
