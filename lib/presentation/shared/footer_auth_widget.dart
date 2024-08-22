import 'package:flutter/material.dart';

import 'theme.dart';

class FooterAuth extends StatelessWidget {
  const FooterAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Dengan masuk atau mendaftar, kamu menyetujui",
            style: blackTextStyle.copyWith(fontWeight: regular),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Ketentuan layanan ",
              style: blueTextStyle.copyWith(fontWeight: regular),
            ),
            Text(
              " dan ",
              style: blackTextStyle.copyWith(fontWeight: regular),
            ),
            Text(
              " Kebijakan Privasi",
              style: blueTextStyle.copyWith(fontWeight: regular),
            ),
          ],
        ),
      ],
    );
  }
}
