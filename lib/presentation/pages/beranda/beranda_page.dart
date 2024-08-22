import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';

import '../../shared/feature_widget.dart';
import '../../shared/video_container_widget.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});
  static const routeName = "/berandaPage";

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  final ScrollController _scrollController = ScrollController();
  double _currentPadding = 0.09; // Padding awal 9% dari lebar layar

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(() {
      // Ketika scroll, periksa posisinya
      if (_scrollController.offset > 0) {
        // Jika scroll sudah dilakukan, hilangkan padding
        setState(() {
          _currentPadding = 0;
        });
      } else {
        // Jika belum di-scroll, padding kembali ke nilai awal
        setState(() {
          _currentPadding = 0.09;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: deviceWidth,
            constraints: BoxConstraints(minHeight: deviceHeight * 0.88),
            height: deviceHeight * .99,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: deviceHeight * 0.065,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: deviceHeight * 0.06,
                          left: deviceWidth * 0.1,
                        ),
                        width: deviceWidth,
                        height: deviceHeight * 0.2,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(147, 227, 255, 1.0),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/image/blue_beranda.png",
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: deviceWidth * 0.45,
                              height: deviceHeight * 0.07,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/image/kontribusi_text.png",
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: deviceWidth * 0.26,
                              height: deviceHeight * 0.03,
                              padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * 0.002,
                                vertical: deviceHeight * 0.002,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green,
                              ),
                              child: Center(
                                child: Text(
                                  "Daftar di sini",
                                  style: whiteTextStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth * 0.075,
                        ),
                        width: deviceWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: deviceHeight * 0.02),
                              width: deviceWidth,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * 0.01,
                                vertical: deviceHeight * 0.01,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Bantu melengkapi bahasa daerahmu",
                                    style: whiteTextStyle,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: whiteColor,
                                    radius: deviceWidth * 0.03,
                                    child: Icon(
                                      Icons.arrow_forward_rounded,
                                      color: primaryColor,
                                      size: deviceWidth * 0.05,
                                      weight: .2,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                FeatureWidget(
                                  image: "kamus",
                                  name: "Kamus Bahasa",
                                ),
                                FeatureWidget(
                                  image: "penerjemah",
                                  name: "Penerjemah",
                                ),
                                FeatureWidget(
                                  image: "data_bahasa",
                                  name: "Data Bahasa",
                                ),
                                FeatureWidget(
                                  image: "peta_bahasa",
                                  name: "Peta Bahasa",
                                ),
                              ],
                            ),
                            SizedBox(
                              height: deviceHeight * 0.02,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                FeatureWidget(
                                  image: "vitalitas_bahasa",
                                  name: "Vitalitas Bahasa",
                                ),
                                FeatureWidget(
                                  image: "video",
                                  name: "Video Bahasa",
                                ),
                                FeatureWidget(
                                  image: "buku",
                                  name: "Buku Digital",
                                ),
                                FeatureWidget(
                                  image: "lainnya",
                                  name: "Lainnya",
                                ),
                              ],
                            ),
                            SizedBox(
                              height: deviceHeight * 0.025,
                            ),
                            Text(
                              "Ayo, belajar bahasa daerah",
                              style: blackTextStyle.copyWith(
                                fontWeight: bold,
                                fontSize: deviceWidth * 0.04,
                              ),
                            ),
                            Text(
                              "Pelajari bahasa-bahasa dearah Indonesia",
                              style: blackTextStyle,
                            ),
                            SizedBox(
                              height: deviceHeight * 0.01,
                            ),
                            const SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  OvalTextWidget(
                                    name: "Bahasa Daerah",
                                  ),
                                  OvalTextWidget(
                                    name: "Bahasa Buru",
                                  ),
                                  OvalTextWidget(name: "Bahasa Alune"),
                                  OvalTextWidget(
                                    name: "Bahasa Yatoke",
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: deviceHeight * 0.02,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: deviceWidth * _currentPadding),
                        width: deviceWidth,
                        child: SingleChildScrollView(
                          controller: _scrollController,
                          scrollDirection: Axis.horizontal,
                          child: const Row(
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
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: deviceHeight * 0.01,
                      horizontal: deviceWidth * 0.01,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: deviceWidth * 0.7,
                          height: deviceHeight * 0.05,
                          decoration: BoxDecoration(
                            color: lightGreyColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Mau belajar apa hari ini?',
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/image/avatar.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OvalTextWidget extends StatelessWidget {
  const OvalTextWidget({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: deviceWidth * 0.015),
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.013,
        vertical: deviceHeight * 0.01,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 1.5, color: const Color.fromRGBO(232, 232, 232, 1.0)),
      ),
      child: Center(
        child: Text(
          name,
          style: blackTextStyle,
        ),
      ),
    );
  }
}
