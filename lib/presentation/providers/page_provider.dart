import 'package:flutter/material.dart';

class KondisiBahasaPageProvider with ChangeNotifier {
  final List<String> pages = [
    "Geografis",
    "Ekonomi",
    "Media",
    "Teknologi(Internet)",
    "Regulasi dan Pemerintah",
    "Pendidikan",
    "Ranah Penggunaan",
    "Dokumentasi",
    "Penutur"
  ];

  final List<String> pageDesc = [
    "geografis",
    "sektor ekonomi",
    "faktor media massa",
    "faktor teknologi (internet)",
    "faktor regulasi (hukum)",
    "pendidikan",
    "ranah penggunaan",
    "dokumentasi",
    "penutur "
  ];

  late String _currPage;
  late String _currPageDesc;

  KondisiBahasaPageProvider() {
    _currPage = pages[0];
    _currPageDesc = pages[0];
  }
  String get currPage => _currPage;
  String get currPageDesc => _currPageDesc;

  int getIndex() {
    int currIndexPage = pages.indexOf(_currPage);

    return currIndexPage;
  }

  void forwardPage() {
    int currIndexPage = pages.indexOf(_currPage);

    if (currIndexPage == pages.length - 1) {
      print("You are in last");
    } else {
      _currPage = pages[currIndexPage + 1];
      _currPageDesc = pages[currIndexPage + 1];
    }
    notifyListeners();
  }

  void backwardPage() {
    int currIndexPage = pages.indexOf(_currPage);

    if (currIndexPage != 0) {
      _currPage = pages[currIndexPage - 1];
      _currPageDesc = pages[currIndexPage - 1];
    } else {
      print("You are in the first page");
    }
    notifyListeners();
  }
}
