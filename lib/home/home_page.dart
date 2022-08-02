import 'package:flutter/material.dart';

import 'package:thu_cung/config/app_color.dart';
import 'package:thu_cung/constants/asset_path.dart';

import '../config/app_style.dart';

import 'components/header.dart';
import 'components/menu.dart';
import 'components/popular.dart';
import 'components/search_bar.dart';
import 'components/slider_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Image.asset(
                _currentIndex == 0
                    ? AssetPath.homeMenuBarColor
                    : AssetPath.homeMenuBar
                // ignore: deprecated_member_use
                ,
              ),
              label: 'Home',
              backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
          BottomNavigationBarItem(
            icon: Image.asset(
              _currentIndex == 1
                  ? AssetPath.heartMenuBarColor
                  : AssetPath.heartMenuBar
              // ignore: deprecated_member_use
              ,
            ),
            label: 'Like',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _currentIndex == 2
                  ? AssetPath.cartMenuBarColor
                  : AssetPath.cartMenuBar
              // ignore: deprecated_member_use
              ,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _currentIndex == 3
                  ? AssetPath.userMenuBarColor
                  : AssetPath.userMenuBar
              // ignore: deprecated_member_use
              ,
            ),
            label: 'User',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: DarkTheme.red,
        onTap: _onItemTapped,
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
