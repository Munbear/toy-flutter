import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/test_model.dart';
import 'middel.dart';

class SpicyA extends StatelessWidget {
  const SpicyA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('this is the Spicy_A Screen'),
                  Text(
                    'Fish number ${Provider.of<FishModel>(context).number}',
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Fish size: ${Provider.of<FishModel>(context).size}'),
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<FishModel>(context, listen: false)
                          .changeFishNumber();
                    },
                    child: Text('Salmon Fish Button'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Middle(),
      ],
    );
  }
}
