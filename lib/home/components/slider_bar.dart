import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../models/movie.dart';

class SliderBar extends StatelessWidget {
  const SliderBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: movies
            .map(
              (e) => Builder(
                builder: (context) {
                  return GestureDetector(
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, bottom: 24),
                          height: 185,
                          width: 378,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(e.backgroundImg),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
            .toList(),
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
        ));
  }
}
