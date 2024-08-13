import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../shared/const.dart';
import '../../shared/theme.dart';

class TopCardBelajar extends StatelessWidget {
  const TopCardBelajar({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  final String title;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth * 0.47,
      height: deviceHeight * 0.1,
      margin: EdgeInsets.only(right: deviceWidth * 0.04),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: .3),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: bold,
              ),
            ),
            subtitle: Text(
              subtitle,
              style: blackTextStyle,
            ),
            trailing: Icon(
              Icons.chevron_right,
              size: deviceWidth * 0.08,
            ),
          ),
          LinearPercentIndicator(
            lineHeight: 8.0,
            percent: 1,
            progressColor: color,
          )
        ],
      ),
    );
  }
}
