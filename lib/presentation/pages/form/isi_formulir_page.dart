import 'package:derana_multipart/presentation/pages/form/identitas/identitas_page.dart';
import 'package:derana_multipart/presentation/providers/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

import '../../shared/const.dart';
import '../../shared/theme.dart';
import 'kondisi_bahasa/kondisi_bahasa_page.dart';

class IsiFormulirPage extends StatefulWidget {
  const IsiFormulirPage({super.key});
  static const routeName = "/isiFormulirPage";

  @override
  State<IsiFormulirPage> createState() => _IsiFormulirPageState();
}

class _IsiFormulirPageState extends State<IsiFormulirPage> {
  var currPage = "Identitas";
  var enableChangeColor = false;
  final List<String> dataList = [
    "Geografis",
    "Ekonomi",
    "Media",
    "Teknologi(Internet)",
    "Regulasi dan Pemerintah",
    "Pendidikan",
    "Ranah Penggunaan",
    "Dokumentasi",
    "Penutur"
  ];

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<KondisiBahasaPageProvider>(context);

    if (pageProvider.getIsScroll == true) {
      setState(() {
        enableChangeColor = true;
      });
    } else {
      setState(() {
        enableChangeColor = false;
      });
    }

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
        child: SingleChildScrollView(
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
                      stops: const [
                        0.9,
                        0.1
                      ], // Membagi layar menjadi dua bagian
                      colors: [
                        primaryColor, // Warna awal
                        currPage == "Identitas"
                            ? lightBackgroundColor
                            : enableChangeColor == true
                                ? lightBackgroundColor
                                : const Color.fromRGBO(
                                    0, 164, 222, .15), // Warna akhir
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
              Container(
                color: lightBackgroundColor,
                padding: EdgeInsets.symmetric(
                  horizontal: currPage == "Identitas" ? deviceWidth * 0.06 : 0,
                ),
                width: deviceWidth,
                height: deviceHeight * 0.48,
                child: currPage == "Identitas"
                    ? const IdentitasPage()
                    : currPage == "Kondisi Bahasa"
                        ? const KondisiBahasaPage()
                        : const Text("Kosakata"),
              ),
              Container(
                color: whiteColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceAround, // Untuk memberi jarak antara tombol
                  children: [
                    // Tombol "Kembali", hanya ditampilkan ketika currPage bukan "Identitas"
                    if (currPage != "Identitas")
                      Expanded(
                        child: Container(
                          color: whiteColor,
                          margin: EdgeInsets.symmetric(
                              vertical: deviceHeight * 0.01),
                          child: GestureDetector(
                            onTap: () {
                              if (currPage == "Kondisi Bahasa") {
                                if (pageProvider.getIndex() == 0) {
                                  setState(() {
                                    // Aksi untuk tombol "Kembali"
                                    currPage =
                                        "Identitas"; // Misalnya kembali ke halaman sebelumnya
                                  });
                                } else {
                                  pageProvider.backwardPage();
                                }
                                setState(() {});
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                left: deviceWidth * 0.06,
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: deviceHeight * 0.015,
                                horizontal: deviceWidth * 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(
                                  128,
                                  128,
                                  128,
                                  .2,
                                ), // Warna abu-abu untuk tombol "Kembali"
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Text(
                                  "Kembali",
                                  style: greyFormTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: deviceWidth * 0.037,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    Expanded(
                      child: Container(
                        color: whiteColor,
                        margin:
                            EdgeInsets.symmetric(vertical: deviceHeight * 0.01),
                        child: GestureDetector(
                          onTap: () {
                            if (currPage == "Identitas") {
                              setState(() {
                                currPage = "Kondisi Bahasa";
                              });
                            } else if (currPage == "Kondisi Bahasa") {
                              pageProvider.forwardPage();
                              setState(() {});
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: deviceWidth * 0.06,
                              vertical: deviceHeight * 0.01,
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: deviceHeight * 0.015,
                              horizontal: deviceWidth * 0.01,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  primaryColor, // Warna untuk tombol "Selanjutnya"
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "Selanjutnya",
                                style: whiteTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: deviceWidth * 0.037,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
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
