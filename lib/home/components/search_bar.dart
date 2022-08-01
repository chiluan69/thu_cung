import 'package:flutter/material.dart';

import '../../config/app_color.dart';
import '../../config/app_style.dart';
import '../../constants/asset_path.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        height: size.height / 15,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: size.height / 19,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: DarkTheme.grey),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 26, right: 12),
                      child: Image.asset(AssetPath.iconSearch),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search something',
                            hintStyle: TxtStyle.heading4,
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16),
              width: size.height / 17,
              height: size.height / 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: DarkTheme.grey)),
              child: Image.asset(AssetPath.iconQr),
            ),
          ],
        ),
      ),
    );
  }
}
