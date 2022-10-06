import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_p/view/spicy_a.dart';

import '../model/test_model.dart';

class High extends StatelessWidget {
  const High({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('this is the High Screen'),
                  Text(
                    'Fish number: ${Provider.of<FishModel>(context).number}',
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Fish size: ${Provider.of<FishModel>(context).size}'),
                ],
              ),
            ),
          ),
        ),
        SpicyA(),
      ],
    );
  }
}
