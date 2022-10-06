import 'package:flutter/material.dart';

class SubmitButtonWidget extends StatefulWidget {
  const SubmitButtonWidget({
    Key? key,
    required this.isChecked,
    required this.tryValid,
  }) : super(key: key);

  final bool isChecked;
  final Function() tryValid;

  @override
  State<SubmitButtonWidget> createState() => _SubmitButtonWidgetState();
}

class _SubmitButtonWidgetState extends State<SubmitButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      top: widget.isChecked ? 430 : 390,
      right: 0,
      left: 0,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(15),
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: GestureDetector(
            onTap: () {
              widget.tryValid();
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.orange,
                    Colors.red,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
