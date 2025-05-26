import 'package:dio/dio.dart';
import 'package:news_app/Models/articla_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticlaModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=d466a83484384100b5de90b72381fe29&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticlaModel> articalesList = [];
      for (var artical in articles) {
        ArticlaModel articlaModel = ArticlaModel.fromJson(artical);

        articalesList.add(articlaModel);
      }
      return articalesList;
    } catch (e) {
      return [];
    }
  }
}
