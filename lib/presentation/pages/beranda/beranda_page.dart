import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../shared/feature_widget.dart';
import '../../shared/flying_row_widget.dart';
import '../../shared/video_container_widget.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});
  static const routeName = "/berandaPage";

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
                          top: deviceHeight * 0.07,
                          left: deviceWidth * 0.1,
                        ),
                        width: deviceWidth,
                        height: deviceHeight * 0.28,
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
                            SizedBox(
                              height: deviceHeight * 0.01,
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
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: deviceHeight * 0.05),
                        padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth * 0.075,
                        ),
                        width: deviceWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                  name: "Buku ",
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
                        padding: EdgeInsets.only(left: deviceWidth * 0.09),
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
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.all(10),
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
                Positioned(
                  top: deviceHeight * 0.285,
                  left: deviceWidth * 0.05,
                  right: deviceWidth * 0.05,
                  child: Container(
                    width: deviceWidth * 0.5,
                    height: deviceHeight * 0.10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: ListView(
                        children: <Widget>[
                          Card(
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  child: ImageIcon(
                                    AssetImage("assets/image/icon_derana.png"),
                                    color: Colors.blue,
                                  ),
                                ),
                                const Text(
                                  "Bantu kami melengkapi data \nbahasa daerah kamu",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  width: deviceWidth * 0.02,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Selanjutnya"))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
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
        border: Border.all(width: 1),
      ),
      child: Center(child: Text(name)),
    );
  }
}
