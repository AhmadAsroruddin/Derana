import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:flutter/material.dart';

class KondisiBahasaPage extends StatelessWidget {
  const KondisiBahasaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: deviceWidth,
        color: const Color.fromRGBO(0, 164, 222, .3),
        child: Column(
          children: <Widget>[
            Text("data"),
          ],
        ),
      ),
    );
  }
}
