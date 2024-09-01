import 'package:flutter/material.dart';

import 'const.dart';
import 'theme.dart';

class AuthCustomTextField extends StatelessWidget {
  const AuthCustomTextField({
    super.key,
    required this.icon,
    required this.label,
    required this.controller,
    this.isPassword = false,
  });

  final IconData icon;
  final String label;
  final TextEditingController controller;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.08,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: greyColor,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: ListTile(
          leading: Icon(
            icon,
            size: deviceWidth * 0.07,
            color: blueColor,
          ),
          title: TextFormField(
            obscureText: isPassword,
            controller: controller,
            decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(
                color: anotherGrey,
                fontSize: deviceWidth * 0.04,
              ),
              floatingLabelBehavior: FloatingLabelBehavior
                  .auto, // Pindahkan label ke atas saat fokus
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              isDense: true,
            ),
            style: blackTextStyle.copyWith(
              fontSize: deviceWidth * 0.035,
              fontWeight: semiBold,
            ),
          ),
        ),
      ),
    );
  }
}
