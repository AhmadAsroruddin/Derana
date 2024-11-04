import 'package:flutter/material.dart';

import 'const.dart';
import 'theme.dart';

class CurrentLocationWidget extends StatelessWidget {
  const CurrentLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth,
      padding: EdgeInsets.symmetric(
        vertical: deviceHeight * 0.01,
        horizontal: deviceWidth * 0.01,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "Kamu lagi ada di Maluku",
            style: whiteTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold,
            ),
          ),
          Container(
            width: deviceWidth * 0.3,
            height: deviceHeight * 0.025,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/image/ganti_lokasi.png",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
