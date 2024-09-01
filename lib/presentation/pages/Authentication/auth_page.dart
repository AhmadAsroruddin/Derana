import 'package:derana_multipart/presentation/pages/Authentication/login_page.dart';
import 'package:derana_multipart/presentation/pages/Authentication/register_page.dart';
import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});
  static const routeName = "/authPage";

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: deviceWidth,
          height: deviceHeight,
          decoration: BoxDecoration(color: primaryColor),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: deviceHeight * 0.1,
                    left: deviceWidth * 0.05,
                    right: deviceWidth * 0.05,
                    bottom: deviceHeight * 0.05),
                width: deviceWidth,
                height: deviceHeight * 0.35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Selamat Datang di Derana",
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: deviceWidth * 0.03,
                      ),
                    ),
                    Text(
                      "Masukkan Akunmu\nSekarang",
                      style: whiteTextStyle.copyWith(
                        fontSize: deviceWidth * 0.06,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      "Nikmati pengalaman baru menjelajah fitur dan\nlayanan bahasa daerah di sini.",
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: deviceWidth * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: deviceWidth,
                height: deviceHeight * 0.65,
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 0.05,
                    vertical: deviceHeight * 0.035),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth * 0.01, // Adjusted padding
                          vertical: deviceHeight * 0.005),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 241, 241, 241),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      height: deviceHeight * 0.06,
                      child: TabBar(
                        controller: _tabController,
                        labelColor: blackColor,
                        unselectedLabelColor: blackColor, // Optional
                        labelStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              50), // Adjusted borderRadius
                          color: whiteColor,
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorWeight: 0,
                        dividerColor: Colors.transparent,
                        tabs: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            child: const Center(
                              child: Tab(
                                text: "Masuk",
                              ),
                            ),
                          ),
                          const Tab(
                            text: "Daftar",
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          const LoginPage(),
                          RegisterPage(),
                        ],
                      ),
                    )
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
