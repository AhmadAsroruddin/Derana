import 'package:derana_multipart/presentation/pages/belajar/belajar_page.dart';
import 'package:derana_multipart/presentation/pages/beranda/beranda_page.dart';
import 'package:derana_multipart/presentation/pages/obrolan/obrolan_page.dart';
import 'package:derana_multipart/presentation/pages/temukan/temukan_page.dart';
import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});
  static const routeName = "/TabPage";

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  late List<Widget> _pages; // Menggunakan List<Widget>

  @override
  void initState() {
    super.initState();
    _pages = [
      const BerandaPage(),
      const BelajarPage(),
      const TemukanPage(),
      const ObrolanPage() // Halaman ketiga, bisa diubah sesuai kebutuhan
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: Container(
        color: whiteColor,
        child: PersistentTabView(
          context,
          screens: _pages, // Menggunakan List<Widget>
          items: [
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.home_rounded),
              title: "Beranda",
              activeColorPrimary: primaryColor,
              inactiveColorPrimary: Colors.grey,
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(FontAwesomeIcons.bookOpen),
              title: "Belajar",
              activeColorPrimary: primaryColor,
              inactiveColorPrimary: Colors.grey,
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.explore),
              title: "Temukan",
              activeColorPrimary: primaryColor,
              inactiveColorPrimary: Colors.grey,
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.explore),
              title: "Obrolan",
              activeColorPrimary: primaryColor,
              inactiveColorPrimary: Colors.grey,
            ),
          ],
          navBarStyle: NavBarStyle.style3, // Menggunakan style 3
          backgroundColor: whiteColor, // Warna latar belakang
        ),
      ),
    );
  }
}
