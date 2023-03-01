import 'package:flutter/material.dart';

import '../theme/colors.dart';

class PersonInterest extends StatelessWidget {
  const PersonInterest({
    Key key,
    @required this.itemsTemp,
  }) : super(key: key);

  final List itemsTemp;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(itemsTemp.length, (indexLikes) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 2),
          margin: EdgeInsets.only(right: 0),
          height: 20,
          decoration: BoxDecoration(
            border: indexLikes == 0
                ? Border.all(
                    color: white,
                    width: 2,
                  )
                : null,
            borderRadius: BorderRadius.circular(30),
            color: indexLikes == 0
                ? white.withOpacity(0.4)
                : white.withOpacity(0.2),
          ),
          child: Center(
            child: Text(
              itemsTemp[indexLikes].toString(),
              style: TextStyle(color: white),
            ),
          ),
        );
      }),
    );
  }
}
