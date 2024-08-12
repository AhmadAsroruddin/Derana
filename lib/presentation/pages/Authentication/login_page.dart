import 'package:derana_multipart/presentation/pages/beranda/tab_page.dart';
import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';

import '../../shared/auth_custom_textfield.dart';
import '../../shared/footer_auth_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          height: deviceHeight * 0.02,
        ),
        AuthCustomTextField(
          label: "Alamat Email",
          icon: Icons.email_outlined,
          controller: email,
        ),
        SizedBox(
          height: deviceHeight * 0.02,
        ),
        AuthCustomTextField(
          icon: Icons.lock_outline,
          label: "Kata Kunci",
          controller: password,
          isPassword: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: deviceWidth * 0.05,
                  height: deviceHeight * 0.05,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: deviceWidth * 0.02,
                ),
                Text(
                  'Ingat saya',
                  style: lightGreyTextStyle.copyWith(
                    fontSize: deviceWidth * 0.035,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Lupa kata sandi',
                style: lightGreyTextStyle.copyWith(fontWeight: semiBold),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            if (email.text == "admin@gmail.com" &&
                password.text == "password") {
              Navigator.of(context).pushNamed(TabPage.routeName);
            }
          },
          child: Center(
            child: Container(
              height: deviceHeight * 0.06,
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  "Masuk",
                  style: whiteTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: deviceWidth * 0.04),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: deviceHeight * 0.015),
          child: Center(
            child: Text(
              "atau masuk dengan",
              style: lightGreyTextStyle.copyWith(fontSize: deviceWidth * 0.04),
            ),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            OtherLogin(
              label: "Google",
              photo: "google",
            ),
            OtherLogin(
              photo: "logos_facebook",
              label: "Facebook",
            )
          ],
        ),
        SizedBox(
          height: deviceHeight * 0.03,
        ),
        const FooterAuth()
      ],
    );
  }
}

class OtherLogin extends StatelessWidget {
  const OtherLogin({super.key, required this.photo, required this.label});
  final String photo;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth * 0.4,
      height: deviceHeight * 0.05,
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.05,
      ),
      decoration: BoxDecoration(
          color: lightBackgroundColor, borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/image/$photo.png', // Ganti dengan path ke file SVG Anda
            width: deviceWidth * 0.05, // Lebar ikon
            height: deviceHeight * 0.05, // Tinggi ikon
          ),
          Text(label)
        ],
      ),
    );
  }
}
