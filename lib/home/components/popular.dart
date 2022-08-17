import 'package:flutter/material.dart';
import '../../models/movie.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    final w = (size.width - 24 * 3) / 2;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          for (final movie in movies1)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Image.asset(
                    movie.popularImage,
                    width: 170,
                    height: 135,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.white,
                              Colors.white.withOpacity(0),
                            ],
                          ),
                        ),
                        child: Text(movie.titleItem)
                        // Column(
                        //   children: [
                        //     Container(
                        //       width: size.width,
                        //       padding: const EdgeInsets.only(bottom: 8, left: 8),
                        //     ),
                        //   ],
                        // ),
                        ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
