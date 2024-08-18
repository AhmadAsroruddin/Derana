import 'package:derana_multipart/presentation/pages/belajar/belajar_page.dart';
import 'package:derana_multipart/presentation/pages/beranda/beranda_page.dart';
import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});
  static const routeName = "/TabPage";
  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  late List<Map<String, dynamic>> _pages;
  int selectedIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': const BerandaPage(), 'title': "Beranda"},
      {'page': const BelajarPage(), 'title': "Belajar"},
      {'page': const BerandaPage(), 'title': "Beranda"}
    ];
    super.initState();
  }

  void selectedPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedPage,
        currentIndex: selectedIndex,
        backgroundColor: whiteColor,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bookOpen,
            ),
            label: "Belajar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Temukan",
          ),
        ],
      ),
    );
  }
}
