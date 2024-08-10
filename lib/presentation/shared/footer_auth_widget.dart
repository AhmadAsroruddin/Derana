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
        const Center(
          child: Text(
            "Dengan masuk atau mendaftar, kamu menyetujui",
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Ketentuan layanan ",
              style: blueTextStyle,
            ),
            Text(
              " dan ",
              style: lightGreyTextStyle,
            ),
            Text(
              " Kebijakan Privasi",
              style: blueTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
