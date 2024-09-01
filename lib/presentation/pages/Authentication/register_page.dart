import 'package:derana_multipart/presentation/shared/auth_custom_textfield.dart';
import 'package:flutter/material.dart';

import '../../shared/const.dart';
import '../../shared/footer_auth_widget.dart';
import '../../shared/theme.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController noTelpController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(
          height: deviceHeight * 0.02,
        ),
        AuthCustomTextField(
          icon: Icons.person,
          label: "Nama Lengkap",
          controller: nameController,
        ),
        AuthCustomTextField(
          icon: Icons.smartphone,
          label: "Nomor Telepon",
          controller: noTelpController,
        ),
        AuthCustomTextField(
          icon: Icons.email_outlined,
          label: "Alamat Email",
          controller: emailController,
        ),
        AuthCustomTextField(
          icon: Icons.lock_outline,
          label: "Kata Kunci",
          controller: passwordController,
          isPassword: true,
        ),
        Center(
          child: Container(
            height: deviceHeight * 0.06,
            margin: EdgeInsets.symmetric(vertical: deviceHeight * 0.01),
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                "Daftar",
                style: whiteTextStyle.copyWith(
                    fontWeight: semiBold, fontSize: deviceWidth * 0.04),
              ),
            ),
          ),
        ),
        const FooterAuth()
      ],
    );
  }
}
