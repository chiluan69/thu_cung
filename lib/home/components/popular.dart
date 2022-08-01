import 'package:flutter/material.dart';

import '../../models/movie.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: movies1
            .map((e) => Builder(builder: (context) {
                  return Expanded(
                      child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: Image.asset(e.popularImage),
                  ));
                }))
            .toList(),
      ),
    );
  }
}
