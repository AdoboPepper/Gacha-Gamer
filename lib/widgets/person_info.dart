import 'package:flutter/material.dart';

import '../theme/colors.dart';

class PersonInfo extends StatelessWidget {
  const PersonInfo({
    Key key, this.name, this.age,
  }) : super(key: key);

  final String name;
  final String age;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: TextStyle(
              color: white,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          age,
          style: TextStyle(
            color: white,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}