import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:derana_multipart/presentation/shared/feature_widget.dart';
import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';

import '../belajar/belajar_page.dart';
import '../temukan/temukan_bahasa_card.dart';

class DataBahasaPage extends StatefulWidget {
  const DataBahasaPage({super.key});

  @override
  State<DataBahasaPage> createState() => _DataBahasaPageState();
}

class _DataBahasaPageState extends State<DataBahasaPage> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text(
          "Data Bahasa",
          style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: deviceWidth,
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.06,
                  vertical: deviceHeight * 0.04),
              color: primaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Fakta Menarik Bahasa",
                    style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.02,
                  ),
                  Text(
                    "Temukan data bahasa menarik yang ingin kamu ketahui di sini",
                    style: whiteTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: deviceWidth,
              padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.06),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 164, 222, 1),
                    Color.fromRGBO(255, 255, 255, 1)
                  ],
                  stops: [.5, .5],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              //BOX IN THE MIDDLE
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.05,
                  vertical: deviceHeight * 0.02,
                ),
                width: deviceWidth,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: .3),
                ),
                child: Column(
                  children: <Widget>[
                    //SEARCHING WIDGET
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: .25),
                      ),
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: "Cari bahasamu di sini",
                          hintStyle: greyFormTextStyle,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: deviceHeight * 0.012,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.03,
                    ),
                    //MAP
                    Container(
                      width: deviceWidth,
                      height: deviceHeight * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: .15),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/image/map_databahasa.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.02,
                    ),
                    //LOCATION
                    Container(
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
                    ),
                    SizedBox(
                      height: deviceHeight * 0.04,
                    ),
                    //LIST FEATURE
                    Row(
                      children: <Widget>[
                        FeatureWidget(
                          image: "pemetaan_bahasa",
                          name: "Pemetaan Bahasa",
                          onTap: () {},
                        ),
                        FeatureWidget(
                          image: "vitalitas_bahasa",
                          name: "Vitalitas Bahasa",
                          onTap: () {},
                        ),
                        FeatureWidget(
                          image: "konservasi_bahasa",
                          name: "Konservasi Bahasa",
                          onTap: () {},
                        ),
                        FeatureWidget(
                          image: "revitaslisasi_bahasa",
                          name: "Revitalisasi Bahasa",
                          onTap: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.03,
            ),
            //END OF BOX
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.06),
              child: Text(
                "Rekomendasi untuk kamu",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.06,
                  vertical: deviceHeight * 0.02),
              child: Text(
                "Pelajari bahasa daerah berdasarkan lokasi kamu sekarang",
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
            //BAHASA ROW
            Container(
              margin: EdgeInsets.only(bottom: deviceHeight * 0.02),
              padding: EdgeInsets.only(
                left: deviceWidth * 0.05,
                top: deviceHeight * 0.03,
                bottom: deviceHeight * 0.03,
              ),
              width: deviceWidth,
              color: const Color.fromRGBO(0, 164, 222, .2),
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
            ),
            //BERDASARKAN PROVINSI
            Container(
              padding: EdgeInsets.only(
                left: deviceWidth * 0.06,
                top: deviceHeight * 0.01,
              ),
              child: Text(
                "Bahasa daerah berdasarkan provinsi",
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: deviceWidth * 0.06,
                bottom: deviceHeight * 0.01,
                top: deviceHeight * 0.02,
              ),
              child: Text(
                "Temukan bahasa daerah yang ingin kamu\npelajari berdasarkan provinsi di Indonesia",
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: deviceWidth * 0.06,
                top: deviceHeight * 0.03,
                bottom: deviceHeight * 0.03,
              ),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ProvinceCard(
                      logoPath: "jakarta",
                      provinceName: "DKI Jakarta",
                      pulauName: "Jawa",
                    ),
                    ProvinceCard(
                      logoPath: "jabar",
                      provinceName: "Jawa Barat",
                      pulauName: "Jawa",
                    ),
                    ProvinceCard(
                        logoPath: "jatim",
                        provinceName: "Jawa Timur",
                        pulauName: "Jawa"),
                    ProvinceCard(
                      logoPath: "jateng",
                      provinceName: "Jawa Tengah",
                      pulauName: "Jawa",
                    ),
                    ProvinceCard(
                      logoPath: "banten",
                      provinceName: "Banten",
                      pulauName: "Banten",
                    ),
                    ProvinceCard(
                        logoPath: "aceh",
                        provinceName: "Aceh",
                        pulauName: "Sumatera")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
