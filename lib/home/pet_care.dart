import 'package:flutter/material.dart';
import 'package:thu_cung/config/app_style.dart';

class PetCare extends StatelessWidget {
  const PetCare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: size.height / 3.5,
              padding: const EdgeInsets.only(top: 30),
              child: const Text(
                'Trông Pet',
                style: TxtStyle.heading3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
