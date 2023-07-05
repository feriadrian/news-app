import 'package:flutter/material.dart';
import 'package:news_app/features/home/widgets/news_card.dart';

import '../widgets/search_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SeacrhWidget(),
              const SizedBox(
                height: 20,
              ),
              const Expanded(child: NewsCard()),
            ],
          ),
        ),
      ),
    );
  }
}
