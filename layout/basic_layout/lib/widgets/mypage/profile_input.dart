import 'package:flutter/material.dart';

class ProfileInput extends StatefulWidget {
  final String label;
  final String hint;
  final String? comment;
  final Function(String value) onChange;

  const ProfileInput({
    Key? key,
    required this.label,
    required this.hint,
    this.comment,
    required this.onChange,
  }) : super(key: key);

  @override
  State<ProfileInput> createState() => _ProfileInputState();
}

class _ProfileInputState extends State<ProfileInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: Text(
            widget.label,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: widget.hint,
            border: OutlineInputBorder(),
          ),
          onChanged: widget.onChange,
        ),
        SizedBox(height: 10),
        if (widget.comment != null)
          Text(
            widget.comment!,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
      ],
    );
  }
}
