import 'package:derana_multipart/presentation/providers/page_provider.dart';
import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KondisiBahasaPage extends StatefulWidget {
  const KondisiBahasaPage({super.key});

  @override
  State<KondisiBahasaPage> createState() => _KondisiBahasaPageState();
}

class _KondisiBahasaPageState extends State<KondisiBahasaPage> {
  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<KondisiBahasaPageProvider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.06),
            width: deviceWidth,
            color: const Color.fromRGBO(0, 164, 222, .15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: deviceHeight * 0.03,
                ),
                Text(
                  "Indikator ${pageProvider.currPage}",
                  style: greyIsiDataTextStyle.copyWith(
                    fontSize: deviceWidth * 0.045,
                    fontWeight: bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: deviceHeight * 0.01,
                  ),
                  child: Text(
                    "Daftar tanyaan di bawah ini untuk mengetahui pengaruh ${pageProvider.currPageDesc} terhadap perkembangan bahasa di daerahmu",
                    style: greyIsiDataTextStyle.copyWith(fontWeight: regular),
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.01,
                ),
                Container(
                  width: deviceWidth * 0.3,
                  padding: EdgeInsets.symmetric(
                    vertical: deviceHeight * 0.005,
                    horizontal: deviceWidth * 0.005,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryColor,
                  ),
                  child: Center(
                      child: Text(
                    "Selengkapnya",
                    style: whiteTextStyle.copyWith(fontWeight: semiBold),
                  )),
                ),
                SizedBox(
                  height: deviceHeight * 0.035,
                ),
              ],
            ),
          ),
          Text("data")
        ],
      ),
    );
  }
}
