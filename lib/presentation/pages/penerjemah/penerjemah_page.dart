import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';

import '../../shared/const.dart';

class PenerjemahPage extends StatefulWidget {
  const PenerjemahPage({super.key});

  static const routeName = "penerjemahPage";

  @override
  State<PenerjemahPage> createState() => _PenerjemahPageState();
}

class _PenerjemahPageState extends State<PenerjemahPage> {
  String leftSelectedLanguage = "Indonesia";
  String rightSelectedLanguage = "Jawa";
  final List<String> items = ['Jawa', 'Indonesia', 'English'];
  TextEditingController searchController = TextEditingController();

  void _showLanguagePicker(String type) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(vertical: deviceHeight * 0.025),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: index % 2 == 0 ? Colors.white : Colors.grey[200],
                child: ListTile(
                  title: Text(items[index]),
                  onTap: () {
                    setState(() {
                      if (type == "left") {
                        leftSelectedLanguage = items[index];
                      } else if (type == "right") {
                        rightSelectedLanguage = items[index];
                      }
                    });
                    Navigator.pop(context);
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text(
          "Penerjemah",
          style: blackTextStyle.copyWith(fontWeight: bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: deviceWidth * 0.1,
                vertical: deviceHeight * 0.02,
              ),
              color: primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _showLanguagePicker("left");
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 0.025,
                        vertical: deviceHeight * 0.005,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: whiteColor,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            leftSelectedLanguage,
                            style: blackTextStyle.copyWith(
                              fontSize: deviceWidth * 0.04,
                            ),
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: deviceWidth * 0.12,
                    padding: const EdgeInsets.all(5),
                    height: deviceHeight * 0.035,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(0, 108, 146, 1.0),
                    ),
                    child: Image.asset("assets/image/swap.png"),
                  ),
                  GestureDetector(
                    onTap: () {
                      _showLanguagePicker("right");
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 0.025,
                        vertical: deviceHeight * 0.005,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: whiteColor,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            rightSelectedLanguage,
                            style: blackTextStyle.copyWith(
                              fontSize: deviceWidth * 0.04,
                            ),
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Search
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: deviceWidth * 0.06,
                vertical: deviceHeight * 0.025,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: .25),
              ),
              padding: EdgeInsets.only(top: deviceHeight * 0.01),
              child: TextField(
                controller: searchController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: "Nyuwun Sewu",
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.35,
              width: deviceWidth,
              child: Column(
                children: <Widget>[
                  Container(
                    color: const Color.fromRGBO(0, 164, 222, .03),
                    padding: EdgeInsets.only(
                      left: deviceWidth * 0.06,
                      top: deviceHeight * 0.02,
                    ),
                    height: deviceHeight * 0.15,
                    width: deviceWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          leftSelectedLanguage,
                          style: blackTextStyle.copyWith(
                            fontSize: deviceWidth * 0.04,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: deviceHeight * 0.01,
                        ),
                        Text(
                          "Permisi",
                          style: blackTextStyle.copyWith(
                            fontSize: deviceWidth * 0.045,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: deviceHeight * 0.05,
                    width: deviceWidth,
                    padding: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 0.43,
                        vertical: deviceHeight * 0.008),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(0, 164, 222, .03),
                          Color.fromRGBO(0, 164, 222, .1)
                        ],
                        stops: [0.5, 0.5],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Container(
                      width: deviceWidth * 0.01,
                      height: deviceHeight * 0.005,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: primaryColor,
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/image/swap.png",
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: deviceWidth * 0.06),
                    color: const Color.fromRGBO(0, 164, 222, .1),
                    height: deviceHeight * 0.15,
                    width: deviceWidth,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: deviceHeight * 0.02,
                            ),
                            Text(
                              rightSelectedLanguage,
                              style: blackTextStyle.copyWith(
                                fontSize: deviceWidth * 0.04,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: deviceHeight * 0.01,
                            ),
                            Text(
                              "Permisi",
                              style: blackTextStyle.copyWith(
                                fontSize: deviceWidth * 0.045,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        const Icon(Icons.volume_down)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
