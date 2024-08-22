import 'package:derana_multipart/presentation/shared/header_tab_widget.dart';
import 'package:flutter/material.dart';

import 'middle_card_belajar.dart';
import 'top_card_belajar.dart';

class BelajarPage extends StatelessWidget {
  const BelajarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const HeaderTabWidget(title: "Belajar"),
            SizedBox(
              height: deviceSize.height * 0.01,
            ),
            Container(
              padding: EdgeInsets.only(
                left: deviceSize.width * .06,
                top: deviceSize.height * 0.005,
                bottom: deviceSize.height * 0.01,
              ),
              width: deviceSize.width,
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
              padding: EdgeInsets.only(left: deviceSize.width * 0.06),
              child: Text(
                "Akses Mudah",
                style: TextStyle(
                  fontSize: deviceSize.width * 0.045,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: deviceSize.width * 0.06),
              child: const Text(
                "Belajar cepat dan mudah dengan memilih\nmenu di bawah ini",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: deviceSize.width * 0.06),
              child: SizedBox(
                width: deviceSize.width,
                height: deviceSize.height * 0.15,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MiddleCardBelajar(
                      color: Colors.blue,
                      image: "toga",
                      title: "Materi",
                    ),
                    MiddleCardBelajar(
                      color: Colors.orange,
                      image: "kartu_kata",
                      title: "Kartu Kata",
                    ),
                    MiddleCardBelajar(
                      color: Colors.green,
                      image: "phrase",
                      title: "Phrasebook",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: deviceSize.width * 0.06,
                top: deviceSize.height * 0.01,
              ),
              child: Text(
                "Bahasa daerah berdasarkan provinsi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: deviceSize.width * 0.045,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: deviceSize.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: deviceSize.width * 0.06,
                bottom: deviceSize.height * 0.01,
              ),
              child: Text(
                "Temukan bahasa daerah yang ingin kamu\npelajari berdasarkan provinsi di Indonesia",
                style: TextStyle(
                  fontSize: deviceSize.width * 0.037,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: deviceSize.width * 0.06,
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
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      width: deviceSize.width * 0.35,
      height: deviceSize.height * 0.2,
      margin: EdgeInsets.only(right: deviceSize.width * 0.05),
      decoration: BoxDecoration(
        border: Border.all(width: .2),
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: deviceSize.width * 0.35,
            height: deviceSize.height * 0.15,
            padding: EdgeInsets.symmetric(vertical: deviceSize.height * 0.01),
            child: Center(
              child: Image.asset(
                "assets/image/jakarta.png",
                scale: 1,
              ),
            ),
          ),
          Container(
            width: deviceSize.width * 0.35,
            padding: EdgeInsets.only(left: deviceSize.width * 0.05),
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: deviceSize.width * 0.04,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Jawa",
                  style: TextStyle(
                    fontSize: deviceSize.width * 0.03,
                    color: Colors.black,
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
