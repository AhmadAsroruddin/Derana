import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';

import 'middle_card_belajar.dart';
import 'top_card_belajar.dart';

class BelajarPage extends StatelessWidget {
  const BelajarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
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
                "Belajar",
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: deviceWidth * 0.06,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: deviceWidth * .06),
              height: deviceHeight * 0.16,
              width: deviceWidth,
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TopCardBelajar(
                      color: Colors.blue,
                      title: "718",
                      subtitle: "Bahasa",
                    ),
                    TopCardBelajar(
                      color: Colors.orange,
                      title: "38",
                      subtitle: "Provinsi",
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: deviceWidth * 0.06),
              child: Text(
                "Akses Mudah",
                style: blackTextStyle.copyWith(
                  fontSize: deviceWidth * 0.045,
                  fontWeight: bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: deviceWidth * 0.06),
              child: Text(
                "Belajar cepat dan mudah dengan memilih\nmenu di bawah ini",
                style: blackTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.06),
              child: SizedBox(
                width: deviceWidth,
                height: deviceHeight * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const MiddleCardBelajar(
                      color: Colors.blue,
                      image: "toga",
                      title: "Materi",
                    ),
                    const MiddleCardBelajar(
                      color: Colors.orange,
                      image: "kartu_kata",
                      title: "Kartu Kata",
                    ),
                    MiddleCardBelajar(
                      color: greenColor,
                      image: "phrase",
                      title: "Phrasebook",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: deviceWidth * 0.06,
                top: deviceHeight * 0.01,
              ),
              child: Text(
                "Bahasa daerah berdasarkan provinsi",
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: deviceWidth * 0.045,
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: deviceWidth * 0.06,
                bottom: deviceHeight * 0.01,
              ),
              child: Text(
                "Temukan bahasa daerah yang ingin kamu\npelajari berdasarkan provinsi di Indonesia",
                style: blackTextStyle.copyWith(
                  fontSize: deviceWidth * 0.037,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: deviceWidth * 0.06,
                ),
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      ProvinceCard(),
                      ProvinceCard(),
                      ProvinceCard()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProvinceCard extends StatelessWidget {
  const ProvinceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth * 0.35,
      height: deviceHeight * 0.2,
      margin: EdgeInsets.only(right: deviceWidth * 0.05),
      decoration: BoxDecoration(
        border: Border.all(width: .2),
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: deviceWidth * 0.35,
            height: deviceHeight * 0.15,
            padding: EdgeInsets.symmetric(vertical: deviceHeight * 0.01),
            child: Center(
              child: Image.asset(
                "assets/image/jakarta.png",
                scale: 1,
              ),
            ),
          ),
          Container(
            width: deviceWidth * 0.35,
            padding: EdgeInsets.only(left: deviceWidth * 0.05),
            decoration: const BoxDecoration(
                border: BorderDirectional(
              top: BorderSide(
                width: .2,
              ),
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Jakarta",
                  style: blackTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: deviceWidth * 0.04,
                  ),
                ),
                Text(
                  "Jawa",
                  style: blackTextStyle.copyWith(
                    fontSize: deviceWidth * 0.03,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
