import 'package:flutter/material.dart';
import 'package:thu_cung/config/app_color.dart';

import 'home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Healthy Pet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'montserrat',
        scaffoldBackgroundColor: DarkTheme.white,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: DarkTheme.black,
              displayColor: DarkTheme.black,
            ),
      ),
      home: const HomePage(),
    );
  }
}
