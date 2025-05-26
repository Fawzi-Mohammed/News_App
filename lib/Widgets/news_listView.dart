import 'package:flutter/material.dart';
import 'package:news_app/Models/articla_model.dart';
import 'package:news_app/Widgets/NewsTile.dart';

class NewsListView extends StatelessWidget {
   final List<ArticlaModel> articles;

  const NewsListView({super.key ,required this.articles });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.only(bottom: 22),
          child: NewTile(articale: articles[index]),
        );
      }),
    );
  }
}
