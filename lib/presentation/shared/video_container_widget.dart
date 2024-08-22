import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'const.dart';
import 'theme.dart';

class VideoContainerWidget extends StatelessWidget {
  const VideoContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth * 0.8,
      height: deviceHeight * 0.14,
      margin: EdgeInsets.only(right: deviceWidth * 0.05),
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.035,
        vertical: deviceHeight * .01,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromRGBO(60, 202, 253, 1.0),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "Belajar\nBahasa Buru",
                  style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: deviceWidth * .036,
                      color: Colors.white),
                ),
                SizedBox(height: deviceHeight * 0.02),
                Text(
                  "Episode 1",
                  style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: deviceWidth * .03,
                      color: Colors.white),
                ),
                LinearPercentIndicator(
                  lineHeight: 8.0,
                  percent: .7,
                  progressColor: Colors.blue,
                  backgroundColor: whiteColor,
                  barRadius: const Radius.circular(5),
                )
              ],
            ),
          ),
          Image.asset(
            "assets/image/video_click.png",
          )
        ],
      ),
    );
  }
}
