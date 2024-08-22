import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';

import 'const.dart';

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({
    super.key,
    required this.image,
    required this.name,
  });
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: deviceWidth * 0.18,
      height: deviceHeight * 0.11,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: whiteColor,
            backgroundImage: AssetImage(
              "assets/image/$image.png",
            ),
            radius: deviceWidth * 0.07,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: blackTextStyle.copyWith(fontSize: deviceWidth * 0.03),
          )
        ],
      ),
    );
  }
}
