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
      width: deviceWidth * 0.7,
      height: deviceHeight * 0.15,
      margin: EdgeInsets.only(right: deviceWidth * 0.02),
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.02,
        vertical: deviceHeight * .01,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: blueColor,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Belajar\nBahasa Buru",
                  style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: deviceWidth * .04,
                      color: Colors.white),
                ),
                SizedBox(height: deviceHeight * 0.02),
                LinearPercentIndicator(
                  lineHeight: 8.0,
                  percent: .7,
                  progressColor: Colors.blue,
                  barRadius: const Radius.circular(5),
                )
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/image/video_click.png",
            ),
          )
        ],
      ),
    );
  }
}
