import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class VitalitasBahasaPage extends StatefulWidget {
  const VitalitasBahasaPage({super.key});

  @override
  State<VitalitasBahasaPage> createState() => _VitalitasBahasaPageState();
}

class _VitalitasBahasaPageState extends State<VitalitasBahasaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text(
          "Vitalitas Bahasa",
          style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ------------------------------ CONTAINER AKSES MUDAH -----------------------//
            Container(
              width: deviceWidth,
              padding: EdgeInsets.symmetric(
                horizontal: deviceWidth * 0.06,
                vertical: deviceHeight * 0.03,
              ),
              color: const Color.fromRGBO(0, 164, 222, .1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Akses Mudah",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.02,
                  ),
                  Text(
                    "Belajar cepat dan mudah dengan memilih menu di bawah ini.",
                    style: blackTextStyle.copyWith(fontSize: 14),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.02,
                  ),
                  // ----------------------------- ROW VITALITAS CARD ----------------------- //
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
