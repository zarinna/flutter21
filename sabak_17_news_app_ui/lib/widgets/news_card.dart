import 'package:flutter/material.dart';
import 'package:sabak_17_news_app_ui/constants/text_styles/texts_styles.dart';
import 'package:sabak_17_news_app_ui/features/model/news_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.index,
    required this.data,
  });
  final int index;
  final List<Articles>? data;
  @override
  Widget build(BuildContext context) {
    final news = data?[index];
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        child: Row(
          children: [
            SizedBox(
              width: 130,
              height: 135,
              child: Image.network(
               news?.urlToImage ?? "",
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      news?.title?? "Без title",
                      style: newsTextStyle,
                    ),
                    Text(
                      news?.description?? " Без description",
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
