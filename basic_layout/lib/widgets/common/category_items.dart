import 'package:flutter/material.dart';

class CategoryItems extends StatefulWidget {
  const CategoryItems({Key? key, required this.category}) : super(key: key);
  final Map<String, dynamic> category;

  @override
  State<CategoryItems> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: GestureDetector(
        onTap: () {
          setState(() {
            // _value = widget.category['category'];
            isChecked = !isChecked;
            // print(_value);
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: isChecked ? Color(0xffFF552C) : Color(0xffF4F4F4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              widget.category['category'],
              style: TextStyle(
                color: isChecked ? Color(0xffffffff) : Color(0xff9B9B9B),
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
