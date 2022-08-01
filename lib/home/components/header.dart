import 'package:flutter/material.dart';
import '../../config/app_style.dart';
import '../../constants/asset_path.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
      child: SizedBox(
        height: size.height / 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Hello, Duong !',
              style: TxtStyle.heading3,
            ),
            CircleAvatar(
              radius: size.height / 40,
              backgroundImage: const AssetImage(AssetPath.iconNotify),
            ),
          ],
        ),
      ),
    );
  }
}
