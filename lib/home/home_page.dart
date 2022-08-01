import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thu_cung/config/app_color.dart';

import '../config/app_style.dart';

import 'components/header.dart';
import 'components/menu.dart';
import 'components/popular.dart';
import 'components/search_bar.dart';
import 'components/slider_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header
            HomeHeader(size: size),
            //search bar
            SearchBar(size: size),
            //slider
            SliderBar(size: size),
            // Image.asset(AssetPath.menuDichvu)
            //MainMenu
            // for (final movie in movies)
            Menu(size: size),
            buildTitle('Popular'),
            const Popular(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                // ignore: deprecated_member_use
                FontAwesomeIcons.homeLgAlt,
                color: DarkTheme.grey,
              ),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 169, 246, 182)),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.heart,
                color: DarkTheme.grey,
              ),
              label: 'Like',
              backgroundColor: DarkTheme.white),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.cartShopping,
                color: DarkTheme.grey,
              ),
              label: 'Cart',
              backgroundColor: DarkTheme.white),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.user,
                color: DarkTheme.grey,
              ),
              label: 'User',
              backgroundColor: DarkTheme.white),
        ],
      ),
    );
  }
}

Padding buildTitle(String content) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
    child: Text(
      content,
      style: TxtStyle.heading3,
    ),
  );
}
