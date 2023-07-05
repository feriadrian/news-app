import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/news/news_page.dart';

import '../home_bloc/home_bloc.dart';
import 'news_item.dart';
// import 'package:intl/intl.dart';

// import '../../../data/models/news/news_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeErrorState) {
          return Center(
            child: Text(
              state.error,
            ),
          );
        }
        if (state is HomeLoadingState) {
          return const Center(
            child: Text('Memuat...'),
          );
        }
        if (state is HomeLoadedState) {
          if (state.listnews.isNotEmpty) {
            return ListView.builder(
              physics: AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics()),
              itemCount: state.listnews.length,
              itemBuilder: (context, index) {
                final model = state.listnews[index];
                return NewsItem(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsPage(url: model.url),
                        )),
                    model: model);
              },
            );
          }
          return const Text('Tidak ada Berita');
        }
        return const Center(child: Text('Belum ada data pencarian'));
      },
    );
  }
}
