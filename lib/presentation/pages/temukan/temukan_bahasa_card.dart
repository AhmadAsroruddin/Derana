import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../shared/const.dart';
import '../../shared/theme.dart';

class TemukanBahasaCard extends StatelessWidget {
  const TemukanBahasaCard({
    super.key,
    required this.bahasa,
    required this.color,
  });
  final String bahasa;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth * 0.32,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.symmetric(
        vertical: deviceHeight * 0.01,
        horizontal: deviceWidth * 0.02,
      ),
      margin: EdgeInsets.only(right: deviceWidth * 0.03),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Bahasa\n$bahasa",
                style: blackTextStyle.copyWith(
                  fontSize: deviceWidth * 0.04,
                  fontWeight: semiBold,
                ),
              ),
              Icon(
                Icons.chevron_right,
                size: deviceWidth * 0.08,
              )
            ],
          ),
          Text(
            "Klik untuk detail",
            style: blackTextStyle.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
          LinearPercentIndicator(
            lineHeight: deviceHeight * 0.01,
            percent: 1,
            barRadius: const Radius.circular(10),
            progressColor: color,
          )
        ],
      ),
    );
  }
}
