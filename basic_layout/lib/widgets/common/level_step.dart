import 'package:basic_layout/enum/step_status.dart';
import 'package:flutter/material.dart';

class LevelStepWidget extends StatefulWidget {
  const LevelStepWidget({Key? key}) : super(key: key);

  @override
  State<LevelStepWidget> createState() => _LevelStepWidgetState();
}

class _LevelStepWidgetState extends State<LevelStepWidget> {
  Status _type = Status.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: Status.values.map<Widget>((_status) {
          return Container(
            margin: EdgeInsets.only(right: 5),
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    _status == _type ? _status.selectColor : Color(0xffF4F4F4)),
            child: GestureDetector(
              child: Center(
                child: SizedBox(
                  child: Text(
                    _status.convertedKorText,
                    style: TextStyle(
                        fontSize: 12,
                        color: _status == _type
                            ? Color(0xffffffff)
                            : Color(0xffC9C9C9)),
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  _type = _status;
                });
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
