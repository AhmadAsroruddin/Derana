import 'package:derana_multipart/presentation/pages/form/isi_formulir_page.dart';
import 'package:flutter/material.dart';

import '../../shared/const.dart';
import '../../shared/theme.dart';

class ModalBottomWidget extends StatelessWidget {
  const ModalBottomWidget({
    super.key,
    required this.title,
    required this.firstImage,
    required this.firstSentences,
    required this.secondImage,
    required this.secondSentences,
  });

  final String title;
  final String firstImage;
  final String firstSentences;
  final String secondImage;
  final String secondSentences;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      height: deviceHeight * 0.45,
      width: deviceWidth,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: deviceHeight * 0.01,
            ),
            width: deviceWidth * 0.2,
            height: 5,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 209, 207, 207),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.04,
          ),
          Container(
            padding: EdgeInsets.only(
              left: deviceWidth * 0.06,
            ),
            width: deviceWidth,
            color: whiteColor,
            child: Text(
              title,
              style: greyFormTextStyle.copyWith(
                fontSize: deviceWidth * 0.045,
                fontWeight: extraBold,
              ),
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.04,
          ),
          Container(
            margin: EdgeInsets.only(
              left: deviceWidth * 0.06,
              right: deviceWidth * 0.06,
            ),
            width: deviceWidth,
            child: Row(
              children: <Widget>[
                Image.asset(
                  "assets/form/$firstImage.png",
                  scale: 1.5,
                ),
                SizedBox(
                  width: deviceWidth * 0.05,
                ),
                SizedBox(
                  width: deviceWidth * 0.65,
                  child: Text(firstSentences,
                      style: greyFormTextStyle.copyWith(
                        fontSize: deviceWidth * 0.033,
                      )),
                )
              ],
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.035,
          ),
          Container(
            margin: EdgeInsets.only(
              left: deviceWidth * 0.06,
              right: deviceWidth * 0.06,
            ),
            width: deviceWidth,
            child: Row(
              children: <Widget>[
                Image.asset(
                  "assets/form/$secondImage.png",
                  scale: 1.5,
                ),
                SizedBox(
                  width: deviceWidth * 0.05,
                ),
                SizedBox(
                  width: deviceWidth * 0.65,
                  child: Text(secondSentences,
                      style: greyFormTextStyle.copyWith(
                        fontSize: deviceWidth * 0.033,
                      )),
                )
              ],
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.05,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(IsiFormulirPage.routeName);
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: deviceWidth * 0.06,
              ),
              padding: EdgeInsets.symmetric(
                vertical: deviceHeight * 0.01,
                horizontal: deviceWidth * 0.01,
              ),
              width: deviceWidth,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  "Sip, mengerti",
                  style: whiteTextStyle.copyWith(
                      fontWeight: bold, fontSize: deviceWidth * 0.037),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
