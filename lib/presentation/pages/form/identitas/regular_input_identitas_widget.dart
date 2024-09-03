import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/const.dart';
import '../../../shared/theme.dart';

class RegularInputIdentitasWidget extends StatelessWidget {
  const RegularInputIdentitasWidget(
      {super.key,
      required this.title,
      required this.controller,
      this.isDropdown = false,
      required this.action,
      this.hintText = ""});

  final String title;
  final TextEditingController controller;
  final VoidCallback action;
  final bool isDropdown;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        width: deviceWidth,
        margin: EdgeInsets.only(bottom: deviceHeight * 0.02),
        padding: EdgeInsets.symmetric(
          horizontal: deviceWidth * 0.05,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          border: Border.all(
            color: const Color.fromRGBO(222, 222, 222, 1),
            width: 1.5,
          ),
        ),
        child: AbsorbPointer(
          absorbing: isDropdown,
          child: TextField(
            readOnly: isDropdown,
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: hintText.isEmpty ? title : hintText,
              hintStyle: GoogleFonts.openSans().copyWith(
                color: const Color.fromRGBO(169, 169, 169, 1),
                fontWeight: medium,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: deviceHeight * 0.015),
              suffixIcon: isDropdown
                  ? const Icon(Icons.expand_more)
                  : const Icon(
                      Icons.expand_more,
                      color: Colors.white,
                    ),
            ),
            style: GoogleFonts.openSans().copyWith(
              color: const Color.fromRGBO(169, 169, 169, 1),
              fontWeight: medium,
            ),
          ),
        ),
      ),
    );
  }
}
