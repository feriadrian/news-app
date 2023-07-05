import 'package:flutter/material.dart';
import 'package:news_app/features/news/news_view.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return NewsView(
      url: url,
    );
  }
}
