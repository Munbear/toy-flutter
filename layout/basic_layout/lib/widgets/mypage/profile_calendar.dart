import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SetCalendar extends StatefulWidget {
  const SetCalendar({Key? key}) : super(key: key);

  @override
  State<SetCalendar> createState() => _SetCalendarState();
}

class _SetCalendarState extends State<SetCalendar> {
  DateTime? date;

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 250,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(top: false, child: child),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Color(0xffBCBCBC),
          fontSize: 13.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _DatePickerItem(
                children: <Widget>[
                  Text(
                    "${date == null ? '(DD/MM/YYYY)' : DateFormat('dd/MM/yyyy').format(date!)}",
                  ),
                  InkWell(
                    onTap: () => _showDialog(
                      CupertinoDatePicker(
                        initialDateTime: new DateTime.now(),
                        mode: CupertinoDatePickerMode.date,
                        use24hFormat: true,
                        onDateTimeChanged: (DateTime newDate) {
                          setState(() => date = newDate);
                        },
                      ),
                    ),
                    child: Container(
                      width: 60,
                      height: 60,
                      color: Color(0xffFF6E40),
                      // decoration: const BoxDecoration(
                      //   borderRadius: BorderRadius.only(
                      //     topRight: Radius.circular(10),
                      //     bottomRight: Radius.circular(10),
                      //   ),
                      // ),
                      child: Image.asset(
                        'images/calendar1.png',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////

class _DatePickerItem extends StatelessWidget {
  const _DatePickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Color(0xffECECEC),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      // decoration: const BoxDecoration(
      //   color: Colors.indigo,
      //   borderRadius: BorderRadius.all(
      //     Radius.circular(10),
      //   ),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}
