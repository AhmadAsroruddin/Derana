import 'package:flutter/material.dart';

import '../../shared/const.dart';
import '../../shared/theme.dart';

class MiddleCardBelajar extends StatelessWidget {
  const MiddleCardBelajar(
      {super.key,
      required this.title,
      required this.color,
      required this.image});

  final String title;
  final Color color;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth * 0.27,
      height: deviceHeight * 0.15,
      padding: EdgeInsets.only(
        left: deviceWidth * 0.02,
        top: deviceHeight * 0.01,
        bottom: deviceHeight * 0.01,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: .2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: deviceWidth * 0.125,
            height: deviceHeight * 0.05,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Image.asset(
                "assets/image/$image.png",
                scale: 1.5,
              ),
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: deviceWidth * 0.035,
            ),
          ),
          Text(
            "Selengkapnya",
            style: blackTextStyle.copyWith(
              fontSize: deviceWidth * 0.03,
            ),
          )
        ],
      ),
    );
  }
}
