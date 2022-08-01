import 'package:flutter/material.dart';

import '../../config/app_color.dart';
import '../../config/app_style.dart';
import '../../models/movie.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceAround,
      children: [
        for (final movie in movies)
          Container(
            margin: const EdgeInsets.only(left: 26, bottom: 20),
            height: size.height / 8,
            width: size.height / 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [
                  GradientPalette.xanhla1,
                  GradientPalette.xanhla1,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  movie.menuImage,
                  width: 42,
                  height: 42,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  movie.title,
                  style: TxtStyle.heading4W,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
