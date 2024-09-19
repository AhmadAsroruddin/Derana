import 'dart:convert';

import 'package:derana_multipart/presentation/providers/page_provider.dart';
import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'question_box_widget.dart';

class KondisiBahasaPage extends StatefulWidget {
  const KondisiBahasaPage({super.key});

  @override
  State<KondisiBahasaPage> createState() => _KondisiBahasaPageState();
}

class _KondisiBahasaPageState extends State<KondisiBahasaPage> {
  final ScrollController _scrollController = ScrollController();

  List<dynamic> pageList = [];
  String currPage = "";
  @override
  void initState() {
    super.initState();
    currPage =
        Provider.of<KondisiBahasaPageProvider>(context, listen: false).currPage;
    loadData(currPage);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final pageProvider = Provider.of<KondisiBahasaPageProvider>(context);
    print(pageProvider.currPage);
    if (currPage != pageProvider.currPage) loadData(pageProvider.currPage);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> loadData(String currentPage) async {
    String filePath = "";

    setState(() {
      currPage = currentPage;
    });

    if (currentPage == "Regulasi dan Pemerintah") {
      filePath = 'assets/data/kondisi_bahasa/pemerintah.json';
    } else if (currentPage == "Ranah Penggunaan") {
      filePath = 'assets/data/kondisi_bahasa/penggunaan.json';
    } else {
      filePath = 'assets/data/kondisi_bahasa/${currentPage.toLowerCase()}.json';
      print(filePath);
    }

    try {
      setState(() {
        pageList.clear();
      });
      String jsonString = await rootBundle.loadString(filePath);
      setState(() {
        pageList = json.decode(jsonString);
      });
    } catch (e) {
      print(e);
    }
  }

  String? selectedValue; // Nilai default

  void onValueChange(String? newValue) {
    setState(() {
      selectedValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<KondisiBahasaPageProvider>(context);

    _scrollController.addListener(() {
      if (_scrollController.offset >= deviceHeight * 0.23) {
        pageProvider.updateScrollOffset(true);
      } else {
        pageProvider.updateScrollOffset(false);
      }
    });

    return Consumer<KondisiBahasaPageProvider>(
      builder: (context, pageProvider, child) {
        return SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Container(
                height: deviceHeight * 0.21,
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
                        style:
                            greyIsiDataTextStyle.copyWith(fontWeight: regular),
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
                        ),
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.02,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.03,
              ),
              ...pageList.map((e) {
                return QuestionBoxWidget(
                  answerOptions: e['answer'],
                  value: e['question'],
                  index: e['id'].toString(),
                );
              })
            ],
          ),
        );
      },
    );
  }
}
