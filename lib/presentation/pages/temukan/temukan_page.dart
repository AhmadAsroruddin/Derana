import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:derana_multipart/presentation/shared/video_container_widget.dart';
import 'package:flutter/material.dart';

import '../../shared/const.dart';
import '../../shared/feature_widget.dart';
import 'temukan_bahasa_card.dart';

class TemukanPage extends StatelessWidget {
  const TemukanPage({super.key});
  static const routeName = "/temukanPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
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
                  "Temukan",
                  style: blackTextStyle.copyWith(
                    fontWeight: extraBold,
                    fontSize: deviceWidth * 0.05,
                  ),
                ),
              ),
              Container(
                width: deviceWidth,
                padding: EdgeInsets.only(
                    left: deviceWidth * 0.06,
                    top: deviceHeight * 0.02,
                    bottom: deviceHeight * 0.02),
                decoration: BoxDecoration(color: primaryColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: deviceWidth,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(right: deviceWidth * 0.06),
                      padding: EdgeInsets.only(
                        top: deviceHeight * 0.01,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.zero,
                            width: deviceWidth,
                            height: deviceHeight * 0.15,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image/map.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: deviceHeight * 0.01,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: deviceWidth * 0.06),
                            child: Text(
                              "Sepertinya Kamu lagi ada di Maluku",
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: deviceWidth * 0.035,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    //UNDER MAP
                    //JUDUL
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: deviceHeight * 0.03,
                      ),
                      child: Text(
                        "Rekomendasi untuk Kamu",
                        style: whiteTextStyle.copyWith(
                          fontWeight: extraBold,
                          fontSize: deviceWidth * 0.045,
                        ),
                      ),
                    ),
                    //////////
                    Text(
                      "Berdasarkan lokasimu sekarang, terdapat\nsekitar 70 bahasa daerah yang tersebar di\nProvinsi Maluku",
                      style: whiteTextStyle.copyWith(),
                    ),
                    ////////////// MAULUKU BUTTON
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: deviceHeight * 0.005,
                      ),
                      margin: EdgeInsets.symmetric(
                        vertical: deviceHeight * 0.03,
                      ),
                      width: deviceWidth * 0.2,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          "Maluku",
                        ),
                      ),
                    ),
                    ////////////BAHASA CARD
                    Container(
                      margin: EdgeInsets.only(bottom: deviceHeight * 0.01),
                      height: deviceHeight * 0.13,
                      width: deviceWidth,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            const TemukanBahasaCard(
                              bahasa: "Alune",
                              color: Colors.blue,
                            ),
                            const TemukanBahasaCard(
                              bahasa: "Ambalau",
                              color: Colors.orange,
                            ),
                            TemukanBahasaCard(
                              bahasa: "Buru",
                              color: redColor,
                            )
                          ],
                        ),
                      ), // Atur lebar menjadi lebar penuh
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: deviceWidth * 0.06,
                  top: deviceHeight * 0.028,
                  bottom: deviceHeight * 0.025,
                ),
                child: Text(
                  "Kurasi pembelajaran bahasa daerah",
                  style: blackTextStyle.copyWith(
                    fontSize: deviceWidth * 0.045,
                    fontWeight: extraBold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: deviceWidth * 0.06,
                  bottom: deviceHeight * 0.028,
                ),
                child: Text(
                  "Temukan set kreasi pembelajaran\nbahasa daerah yang dibuat oleh komunitas",
                  style: blackTextStyle.copyWith(fontWeight: medium),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: deviceWidth * 0.06,
                  right: deviceWidth * 0.06,
                ),
                width: deviceWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FeatureWidget(
                      onTap: () {
                        print("budaya");
                      },
                      image: "budaya",
                      name: "Budaya",
                    ),
                    FeatureWidget(
                      onTap: () {
                        print("pekerjaan");
                      },
                      image: "pekerjaan",
                      name: "Pekerjaan",
                    ),
                    FeatureWidget(
                      onTap: () {
                        print("makanan");
                      },
                      image: "makanan",
                      name: "Makanan",
                    ),
                    FeatureWidget(
                      onTap: () {
                        print("wisata");
                      },
                      image: "wisata",
                      name: "Wisata",
                    ),
                  ],
                ),
              ),
              ////////////////////////
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: deviceHeight * 0.025,
                ),
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Video Pembelajaran",
                      style: blackTextStyle.copyWith(
                        fontSize: deviceWidth * 0.045,
                        fontWeight: extraBold,
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.025,
                    ),
                    Text(
                      "Pelajari vidio pembelajaran bahasa daerah\nterkini dari komunitas bahasa",
                      style: blackTextStyle.copyWith(
                        fontSize: deviceWidth * 0.03,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: deviceWidth * 0.06),
                width: deviceWidth,
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      VideoContainerWidget(),
                      VideoContainerWidget(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
