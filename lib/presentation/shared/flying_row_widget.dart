import 'package:flutter/material.dart';

import 'const.dart';
import 'theme.dart';

class FlyingRowWidget extends StatelessWidget {
  const FlyingRowWidget({
    required this.title,
    required this.subtitle,
    required this.image,
    super.key,
  });

  final String title;
  final String subtitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: deviceWidth * 0.08,
          height: deviceHeight * 0.04,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/image/$image.png",
                ),
                fit: BoxFit.fill),
          ),
        ),
        SizedBox(
          width: deviceWidth * 0.01,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: greyTextStyle,
            ),
            Text(
              subtitle,
              style: blackTextStyle.copyWith(fontWeight: semiBold),
            ),
          ],
        )
      ],
    );
  }
}
