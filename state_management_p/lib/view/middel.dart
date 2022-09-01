import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/seafish_model.dart';
import '../model/test_model.dart';

class Middle extends StatefulWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  State<Middle> createState() => _MiddleState();
}

class _MiddleState extends State<Middle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('this is the Middle Screen'),
                  Text(
                    'Tuna number: ${Provider.of<SeaFishModel>(context).tunaNumber}',
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Tuna size: ${Provider.of<SeaFishModel>(context).size}'),
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<SeaFishModel>(context, listen: false)
                          .changeSeaFishNumber();
                    },
                    child: Text('Sea fish number'),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
