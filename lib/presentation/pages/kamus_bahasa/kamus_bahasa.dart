import 'package:derana_multipart/presentation/pages/belajar/middle_card_belajar.dart';
import 'package:derana_multipart/presentation/pages/kamus_bahasa/language_dropdown.dart';
import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KamusBahasa extends StatefulWidget {
  const KamusBahasa({super.key});
  static const routeName = "/kamus_bahasa";

  @override
  State<KamusBahasa> createState() => _KamusBahasaState();
}

class _KamusBahasaState extends State<KamusBahasa> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2), // Tinggi border bawah
          child: Container(
            color: Colors.grey, // Warna border
            height: .3, // Tebal border, disesuaikan dengan preferredSize
          ),
        ),
        title: Text(
          "Kamus Bahasa",
          style: blackTextStyle.copyWith(fontWeight: bold),
        ),
      ),
      body: Container(
        color: whiteColor,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: deviceWidth,
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: deviceHeight * 0.03,
                    ),
                    Text(
                      "Pilih bahasa daerah",
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: deviceWidth * 0.043,
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.02,
                    ),
                    Text(
                      "Pilih bahasa daerah yang akan kamu cari",
                      style:
                          blackTextStyle.copyWith(fontSize: deviceWidth * 0.04),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.02,
                    ),
                    LanguageDropdown(),
                    SizedBox(
                      height: deviceHeight * 0.02,
                    ),
                    Container(
                      width: deviceWidth,
                      height: deviceHeight * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: .2),
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: deviceWidth * 0.02,
                          ),
                          Icon(
                            Icons.search_sharp,
                            size: deviceWidth * 0.07,
                          ),
                          SizedBox(
                            width: deviceWidth * 0.02,
                          ),
                          Text(
                            "Cari kosakata kamu di sini",
                            style: blackTextStyle.copyWith(
                                fontSize: deviceWidth * 0.04),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.03,
                    ),
                    Text(
                      "Kosakata hari ini",
                      style: blackTextStyle.copyWith(
                        fontSize: deviceWidth * 0.043,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.02,
                    ),
                    Text(
                      "Temukan kosakata acak kamu hari ini",
                      style:
                          blackTextStyle.copyWith(fontSize: deviceWidth * 0.04),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: deviceHeight * 0.02),
                      padding: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 0.05,
                        vertical: deviceHeight * 0.01,
                      ),
                      width: deviceWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image:
                              AssetImage("assets/color/colorGradientBlue.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("20.05.24"),
                              Icon(Icons.volume_down),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: deviceHeight * 0.02),
                            child: Text(
                              "Njupuk",
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: deviceWidth * 0.04,
                              ),
                            ),
                          ),
                          Text(
                            "(B. Jawa; Verb) Mengambil sesuatu",
                            style: blackTextStyle.copyWith(
                              fontSize: deviceWidth * 0.04,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: deviceHeight * 0.02,
                        top: deviceHeight * 0.01,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Topik Spesial",
                            style: blackTextStyle.copyWith(
                              fontSize: deviceWidth * 0.043,
                              fontWeight: semiBold,
                            ),
                          ),
                          GestureDetector(
                            child: Text(
                              "Selengkapnya",
                              style: GoogleFonts.openSans().copyWith(
                                color: primaryColor,
                                fontSize: deviceWidth * 0.035,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Pelajari kosakata berdasarakan topik spesial yang telah tersedia",
                      style:
                          blackTextStyle.copyWith(fontSize: deviceWidth * 0.04),
                    ),
                  ],
                ),
              ),
              Container(
                width: deviceWidth,
                height: deviceHeight * 0.2,
                padding: EdgeInsets.only(
                  left: deviceWidth * 0.06,
                  top: deviceHeight * 0.025,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: deviceWidth * 0.03),
                      padding:
                          EdgeInsets.symmetric(vertical: deviceHeight * 0.0),
                      child: const MiddleCardBelajar(
                        title: "Bandara",
                        color: Colors.white,
                        image: "bandara",
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.06),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        bottom: deviceHeight * 0.02,
                        top: deviceHeight * 0.01,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Kurasi Kosakata",
                            style: blackTextStyle.copyWith(
                              fontSize: deviceWidth * 0.043,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          GestureDetector(
                            child: Text(
                              "Selengkapnya",
                              style: GoogleFonts.openSans().copyWith(
                                color: primaryColor,
                                fontSize: deviceWidth * 0.035,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Temukan berbagai macam kosakata yang dibuat oleh komunitas",
                      style:
                          blackTextStyle.copyWith(fontSize: deviceWidth * 0.04),
                    ),
                  ],
                ),
              ),
              Container(
                width: deviceWidth,
                height: deviceHeight * 0.27,
                padding: EdgeInsets.only(
                  left: deviceWidth * 0.06,
                  top: deviceHeight * 0.025,
                  bottom: deviceHeight * 0.025,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: deviceWidth * 0.04),
                      width: deviceWidth * 0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: deviceHeight * 0.125,
                            decoration: BoxDecoration(
                              border: Border.all(width: .4, color: Colors.grey),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              image: const DecorationImage(
                                image: AssetImage("assets/image/wayang.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: .4, color: Colors.grey),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * 0.03,
                                vertical: deviceHeight * 0.01,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Bahasa Jawa",
                                        style: blackTextStyle.copyWith(
                                          fontWeight: bold,
                                          fontSize: deviceWidth * 0.045,
                                        ),
                                      ),
                                      Text(
                                        "Koran Tempo",
                                        style: blackTextStyle.copyWith(
                                            fontSize: deviceWidth * 0.036),
                                      )
                                    ],
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: blackColor,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: whiteColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
