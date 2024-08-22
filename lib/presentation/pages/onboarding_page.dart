import 'package:derana_multipart/presentation/pages/Authentication/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../shared/const.dart';
import '../shared/theme.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _currPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currPage = _controller.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: deviceHeight * 0.05,
          horizontal: deviceWidth * 0.07,
        ),
        height: deviceHeight,
        width: deviceWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [primaryColor, whiteColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.5, 0.5],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: deviceHeight * 0.05,
            ),
            Text(
              "Selamat Datang di Derana",
              style: GoogleFonts.plusJakartaSans().copyWith(
                color: whiteColor,
                fontSize: deviceWidth * 0.035,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.04,
            ),
            Text(
              "Akses Bahasa Daerah\ndi Genggamanmu",
              style: GoogleFonts.plusJakartaSans().copyWith(
                fontSize: deviceWidth * 0.06,
                fontWeight: semiBold,
                color: whiteColor,
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.05,
            ),
            Center(
              child: Container(
                width: deviceWidth,
                height: deviceHeight * 0.35,
                padding: EdgeInsets.all(deviceWidth * 0.01),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(238, 250, 255, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: PageView(
                  controller: _controller,
                  children: [
                    Image.asset(
                      'assets/image/gs2.png',
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/image/s_second.png',
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/image/gs3.png',
                      fit: BoxFit.fill,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.05,
            ),
            Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: WormEffect(
                  activeDotColor: Colors.blue,
                  dotColor: Colors.grey,
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: deviceWidth * 0.03,
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.05,
            ),
            Container(
              width: deviceWidth,
              height: deviceHeight * 0.06,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(149, 222, 248, .9),
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(
                    Icons.facebook,
                    color: Color.fromARGB(255, 0, 83, 228),
                  ),
                  SizedBox(
                    width: deviceWidth * 0.04,
                  ),
                  Text(
                    "Masuk dengan Facebook",
                    style: GoogleFonts.plusJakartaSans().copyWith(
                        color: blackColor,
                        fontWeight: regular,
                        fontSize: deviceWidth * 0.04),
                  )
                ],
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.02,
            ),
            Container(
              width: deviceWidth,
              height: deviceHeight * 0.06,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/image/google.png', // Ganti dengan path ke file SVG Anda
                    width: deviceWidth * 0.04, // Lebar ikon
                    height: deviceHeight * 0.05, // Tinggi ikon
                  ),
                  SizedBox(
                    width: deviceWidth * 0.04,
                  ),
                  Text(
                    "Masuk dengan Google",
                    style: GoogleFonts.plusJakartaSans().copyWith(
                        color: whiteColor,
                        fontWeight: regular,
                        fontSize: deviceWidth * 0.04),
                  )
                ],
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Belum mempunyai akun?",
                  style: GoogleFonts.plusJakartaSans().copyWith(
                    color: Colors.black,
                    fontSize: deviceWidth * 0.035,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 8.0)),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(AuthPage.routeName);
                  },
                  child: Text(
                    "Daftar di sini",
                    style: GoogleFonts.plusJakartaSans().copyWith(
                      color: primaryColor,
                      fontWeight: regular,
                      fontSize: deviceWidth * 0.035,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
