import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:derana_multipart/presentation/shared/current_location_widget.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../shared/feature_widget.dart';
import '../../shared/temukan_bahasa_card.dart';
import '../../shared/theme.dart';
import '../data_bahasa/data_bahasa.dart';
import '../kamus_bahasa/kamus_bahasa.dart';
import '../penerjemah/penerjemah_page.dart';

class PetaBahasaPage extends StatefulWidget {
  const PetaBahasaPage({super.key});

  @override
  State<PetaBahasaPage> createState() => _PetaBahasaPageState();
}

class _PetaBahasaPageState extends State<PetaBahasaPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text(
          "Peta Bahasa",
          style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //MAP ----------------------------------------------------------
            Container(
              width: deviceWidth,
              height: deviceHeight * 0.25,
              color: redColor,
              child: Stack(
                children: <Widget>[
                  // --------------------------MAP CONTAINER-----------------------
                  SizedBox(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: deviceHeight * 0.227,
                          width: deviceWidth,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/image/map.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: deviceHeight * 0.023,
                          width: deviceWidth,
                          color: whiteColor,
                        )
                      ],
                    ),
                  ),
                  // ---------------------------- CURRENT LOCATION ------------------------
                  Positioned(
                    bottom: 0,
                    left: deviceWidth * 0.06,
                    right: deviceWidth * 0.06,
                    child: const CurrentLocationWidget(),
                  )
                ],
              ),
            ),
            // --------------------------------- SEARCHING WIDGET ---------------------------------
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: .5),
              ),
              margin: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.06,
                  vertical: deviceHeight * 0.03),
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
            //------------------------------- DATA BAHASA ------------------------------
            Container(
              width: deviceWidth,
              color: const Color.fromRGBO(0, 164, 222, .1),
              padding: EdgeInsets.symmetric(
                  vertical: deviceHeight * 0.02,
                  horizontal: deviceWidth * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Data Bahasa",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.02,
                  ),
                  Text(
                    "Berdasarkan lokasimu saat ini, berikut data bahasa yang telah terpetakan.",
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.03,
                  ),
                  // ----------------------------- BAHASA ROW ----------------------------- //
                  Container(
                    margin: EdgeInsets.only(bottom: deviceHeight * 0.02),
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
                  ),
                ],
              ),
            ),
            // ----------------------  END DATA BAHASA ----------------------------//
            Container(
              width: deviceWidth,
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.06,
                  vertical: deviceHeight * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Akses Cepat",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.02,
                  ),
                  Text(
                    "Temukan akses cepat di bawah untuk menuju inventarisasi data bahasa",
                    style: blackTextStyle.copyWith(fontSize: 14),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FeatureWidget(
                        onTap: () {
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: const KamusBahasa(),
                            withNavBar: false,
                            pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                          );
                        },
                        image: "kamus",
                        name: "Kamus Bahasa",
                      ),
                      SizedBox(
                        width: deviceWidth * 0.04,
                      ),
                      FeatureWidget(
                        onTap: () {
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: const PenerjemahPage(),
                            withNavBar: false,
                            pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                          );
                        },
                        image: "penerjemah",
                        name: "Penerjemah",
                      ),
                      SizedBox(
                        width: deviceWidth * 0.04,
                      ),
                      FeatureWidget(
                        onTap: () {
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: const DataBahasaPage(),
                            withNavBar: false,
                            pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                          );
                        },
                        image: "data_bahasa",
                        name: "Data Bahasa",
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
