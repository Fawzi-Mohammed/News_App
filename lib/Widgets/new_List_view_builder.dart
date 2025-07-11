import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/articla_model.dart';
import 'package:news_app/Widgets/error_message.dart';
import 'package:news_app/Widgets/holder.dart';
import 'package:news_app/Widgets/news_listView.dart';
import 'package:news_app/services/news_service.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({super.key, required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlaModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: ErrorMessage(message: 'oops there was an error, try later'),
          );
        } else {
          return Holder();
        }
      },
    );
  }
}

bool isLoading = true;
