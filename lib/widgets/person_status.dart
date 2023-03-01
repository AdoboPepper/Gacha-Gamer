import 'package:flutter/material.dart';

import '../theme/colors.dart';

class PersonStatus extends StatelessWidget {
  const PersonStatus({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: green,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Recently Active",
          style: TextStyle(
            color: white,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}