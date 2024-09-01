import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../shared/const.dart';
import '../../shared/theme.dart';

class IsiFormulirPage extends StatefulWidget {
  const IsiFormulirPage({super.key});
  static const routeName = "/isiFormulirPage";

  @override
  State<IsiFormulirPage> createState() => _IsiFormulirPageState();
}

class _IsiFormulirPageState extends State<IsiFormulirPage> {
  var currPage = "identitas";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightBackgroundColor,
        title: Text(
          "Isi Formulir",
          style: blackTextStyle.copyWith(fontWeight: extraBold),
        ),
      ),
      backgroundColor: lightBackgroundColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.only(
                  top: deviceHeight * 0.03,
                  left: deviceWidth * 0.06,
                  right: deviceWidth * 0.06,
                ),
                width: deviceWidth,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.9, 0.1], // Membagi layar menjadi dua bagian
                    colors: [
                      primaryColor, // Warna awal
                      lightBackgroundColor, // Warna akhir
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: deviceWidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Data Responden",
                                style: whiteTextStyle.copyWith(
                                  fontSize: deviceWidth * 0.05,
                                  fontWeight: extraBold,
                                ),
                              ),
                              SizedBox(
                                height: deviceHeight * 0.01,
                              ),
                              Text(
                                "Kami ingin mengetahui dan\nmemetakan bahasa sesuai\ndengan wilayah tutur.",
                                style: whiteTextStyle,
                              )
                            ],
                          ),
                          Image.asset(
                            "assets/form/responden.png",
                            scale: 1.5,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: deviceWidth,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin:
                          EdgeInsets.symmetric(vertical: deviceHeight * 0.02),
                      padding: EdgeInsets.symmetric(
                        vertical: deviceHeight * 0.01,
                        horizontal: deviceWidth * 0.04,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Progress",
                            style: greyIsiDataTextStyle,
                          ),
                          SizedBox(
                            height: deviceHeight * 0.005,
                          ),
                          LinearPercentIndicator(
                            padding: EdgeInsets.zero,
                            lineHeight: 4.0,
                            percent: .4,
                            progressColor: Colors.blue,
                            backgroundColor: lightGreyColor,
                            barRadius: const Radius.circular(5),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromRGBO(11, 151, 201, 1),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: deviceHeight * 0.01,
                        horizontal: deviceWidth * 0.03,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currPage = "Identitas";
                              });
                            },
                            child: NavigatorItem(
                              currPage: currPage,
                              title: "Identitas",
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currPage = "Kondisi Bahasa";
                              });
                            },
                            child: NavigatorItem(
                              currPage: currPage,
                              title: "Kondisi Bahasa",
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currPage = "Kosakata";
                              });
                            },
                            child: NavigatorItem(
                              currPage: currPage,
                              title: "Kosakata",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigatorItem extends StatelessWidget {
  const NavigatorItem({
    super.key,
    required this.currPage,
    required this.title,
  });

  final String currPage;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.05,
        vertical: deviceHeight * 0.01,
      ),
      decoration: BoxDecoration(
        color: currPage == title
            ? whiteColor
            : const Color.fromRGBO(11, 151, 201, 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        title,
        style: GoogleFonts.plusJakartaSans().copyWith(
          color: currPage == title
              ? const Color.fromRGBO(90, 88, 88, 1)
              : Colors.white,
          fontWeight: bold,
          fontSize: deviceWidth * 0.03,
        ),
      ),
    );
  }
}
