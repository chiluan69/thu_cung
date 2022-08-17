import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../models/movie.dart';

class SliderBar extends StatefulWidget {
  const SliderBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<SliderBar> createState() => _SliderBarState();
}

class _SliderBarState extends State<SliderBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: movies
              .map(
                (e) => Builder(
                  builder: (context) {
                    return GestureDetector(
                      child: Stack(
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 24),
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
            initialPage: index,
            onPageChanged: (i, _) {
              setState(
                () {
                  index = i;
                },
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
          child: AnimatedSmoothIndicator(
            activeIndex: index,
            count: movies.length,
            effect: const SlideEffect(
              dotColor: Color.fromARGB(193, 236, 230, 230),
              dotWidth: 15.0,
              dotHeight: 15.0,
              spacing: 8.0,
              strokeWidth: 1.5,
              activeDotColor: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
