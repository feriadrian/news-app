import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../data/models/news/news_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.onTap,
    required this.model,
  });
  final Function() onTap;
  final NewsModel model;
  @override
  Widget build(BuildContext context) {
    final double heightSize = MediaQuery.of(context).size.height;

    DateTime dateTime = DateTime.parse(model.publishedAt);
    String formattedDate = DateFormat("dd MMMM yyyy").format(dateTime);
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              model.urlToImage.isNotEmpty
                  ? Container(
                      width: double.infinity,
                      height: heightSize * 1 / 8,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          image: DecorationImage(
                              image: NetworkImage(model.urlToImage),
                              fit: BoxFit.fill)),
                    )
                  : const SizedBox(),
              Text(model.title),
              const SizedBox(
                height: 4,
              ),
              Text('Publish At $formattedDate')
            ],
          )),
    );
  }
}
