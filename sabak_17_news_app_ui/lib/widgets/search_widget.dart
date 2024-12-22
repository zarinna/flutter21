import 'package:flutter/material.dart';
import 'package:sabak_17_news_app_ui/constants/app_colors/app_bar_bgc.dart';
import 'package:sabak_17_news_app_ui/constants/app_colors/icons_color.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: orangeColor,
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search,
          color: searchColor,
          size: 30,
        ),
      ),
    );
  }
}
