import 'package:flutter/material.dart';

import '../../shared/const.dart';
import '../../shared/theme.dart';

class ModalBottomWidget extends StatelessWidget {
  const ModalBottomWidget({
    super.key,
    required this.title,
    required this.items,
  });

  final String title;
  final List<ModalBottomItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      width: deviceWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
          ...items.map((item) => ModalBottomItemWidget(item: item)).toList(),
          SizedBox(
            height: deviceHeight * 0.02,
          ),
          GestureDetector(
            onTap: () {},
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
          ),
          SizedBox(
            height: deviceHeight * 0.02,
          ),
        ],
      ),
    );
  }
}

class ModalBottomItem {
  final String image;
  final String sentences;

  ModalBottomItem({
    required this.image,
    required this.sentences,
  });
}

class ModalBottomItemWidget extends StatelessWidget {
  const ModalBottomItemWidget({
    super.key,
    required this.item,
  });

  final ModalBottomItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.06,
        vertical: deviceHeight * 0.0175,
      ),
      width: deviceWidth,
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/form/${item.image}.png",
            scale: 1.5,
          ),
          SizedBox(
            width: deviceWidth * 0.05,
          ),
          SizedBox(
            width: deviceWidth * 0.65,
            child: Text(
              item.sentences,
              style: greyFormTextStyle.copyWith(
                fontSize: deviceWidth * 0.033,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
