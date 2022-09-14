import 'package:flutter/material.dart';

class ProfileDemo extends StatelessWidget {
  const ProfileDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => {},
          child: SizedBox(
            width: 80,
            height: 80,
            child: Stack(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('images/no_profile1.png'),
                  radius: 40.0,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    'images/edit2.png',
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Kokiri',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
