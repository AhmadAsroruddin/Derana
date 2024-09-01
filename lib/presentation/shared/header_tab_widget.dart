import 'package:flutter/material.dart';

import 'const.dart';
import 'theme.dart';

class HeaderTabWidget extends StatelessWidget {
  const HeaderTabWidget({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.06,
      ),
      width: deviceWidth,
      margin: EdgeInsets.only(top: deviceHeight * 0.02),
      height: deviceHeight * 0.06,
      decoration: const BoxDecoration(
        border: BorderDirectional(
          bottom: BorderSide(width: .2),
        ),
      ),
      child: Text(
        title,
        style: blackTextStyle.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: deviceWidth * 0.05,
        ),
      ),
    );
  }
}
