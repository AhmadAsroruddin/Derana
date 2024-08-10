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
          title: Text(
            label,
            style: const TextStyle(color: Color.fromRGBO(109, 109, 109, 1.0)),
          ),
          subtitle: TextField(
            obscureText: isPassword,
            controller: controller,
            decoration: const InputDecoration(
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
