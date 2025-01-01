import 'package:flutter/material.dart';
import 'package:sabak_17_news_app_ui/constants/app_colors/app_bar_bgc.dart';
import 'package:sabak_17_news_app_ui/constants/app_colors/icons_color.dart';
import 'package:sabak_17_news_app_ui/constants/text_styles/texts_styles.dart';

AppBar myAppBar() {
  return AppBar(
    centerTitle: false,
    backgroundColor: orangeColor,
    title: const Text(
      'News Aggregator',
      style: titleStyle,
    ),
    actions: const [
      Icon(
        Icons.more_vert,
        color: menuColor,
      )
    ],
  );
}
