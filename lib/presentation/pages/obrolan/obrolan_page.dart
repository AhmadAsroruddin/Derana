import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:flutter/material.dart';

import '../../shared/header_tab_widget.dart';
import '../../shared/theme.dart';

class ObrolanPage extends StatelessWidget {
  const ObrolanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const HeaderTabWidget(
              title: "Obrolan",
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: deviceHeight * 0.03),
              width: deviceWidth * 0.85,
              height: deviceHeight * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: .3,
                ),
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundImage:
                          const AssetImage("assets/image/avatar.png"),
                      radius: deviceWidth * 0.07,
                    ),
                  ),
                  SizedBox(
                    width: deviceWidth * 0.025,
                  ),
                  Text(
                    "Tulis pertanyaan kamu di sini",
                    style: blackTextStyle.copyWith(
                      fontSize: deviceWidth * 0.035,
                      fontWeight: semiBold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: deviceWidth * 0.07,
                vertical: deviceHeight * 0.03,
              ),
              width: deviceWidth,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 164, 222, .3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Bergabung dengan komunitas",
                    style: blackTextStyle.copyWith(
                      fontSize: deviceWidth * 0.045,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Jelajahi komunitas pecinta bahasa\nyang telah bergabung di dalam\nDerana Indonesia",
                        style: blackTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: deviceWidth * 0.0335,
                        ),
                      ),
                      Container(
                        width: deviceWidth * 0.27,
                        height: deviceHeight * 0.1,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/image/community_loop.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: deviceHeight * 0.01,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: deviceWidth * 0.025,
                      vertical: deviceHeight * 0.008,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Ayo, gabung",
                      style: whiteTextStyle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: deviceWidth * 0.07,
                vertical: deviceHeight * 0.02,
              ),
              width: deviceWidth,
              child: Text(
                "Pertanyaan",
                style: blackTextStyle.copyWith(
                  fontSize: deviceWidth * 0.05,
                  fontWeight: extraBold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: deviceWidth * 0.07,
                      vertical: deviceHeight * 0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/image/avatar.png",
                          ),
                          radius: deviceWidth * 0.065,
                        ),
                        Container(
                          width: deviceWidth * 0.6,
                          padding: EdgeInsets.only(
                            top: deviceHeight * 0.01,
                            bottom: deviceHeight * 0.01,
                            left: deviceWidth * 0.05,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              width: .4,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Avilla Hildegard Savdurin",
                                style: blackTextStyle,
                              ),
                              Text(
                                "1 hari lalu",
                                style: blackTextStyle,
                              ),
                              Text(
                                "Apa bahasa Jawa dari mencuci di kali tapi air nya kotor?",
                                style: blackTextStyle.copyWith(
                                  fontWeight: extraBold,
                                  fontSize: deviceWidth * 0.04,
                                ),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.favorite_border_outlined),
                                      SizedBox(
                                        width: deviceWidth * 0.005,
                                      ),
                                      Text("1")
                                    ],
                                  ),
                                  SizedBox(
                                    width: deviceWidth * 0.05,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.chat),
                                      SizedBox(
                                        width: deviceWidth * 0.005,
                                      ),
                                      Text("1")
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Center(
                          child: CircleAvatar(
                            backgroundColor: greyColor,
                            child: Icon(Icons.more_horiz),
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
    );
  }
}
