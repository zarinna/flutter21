import 'package:flutter/material.dart';
import 'package:sabak_17_news_app_ui/constants/text_styles/texts_styles.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.index, required this.newsList,
  });
  final int index;
  final List newsList;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        child: Row(
          children: [
            Image.asset(
              newsList[index].image,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newsList[index].date,
                      style: newsTextStyle,
                    ),
                    Text(
                      newsList[index].text,
                      style: newsTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
