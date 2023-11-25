import 'package:basketball_counter_app/model/articalModel.dart';
import 'package:dio/dio.dart';

class newsService {
  final Dio dio;

  newsService(this.dio);

  Future<List<ArticlesModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?apiKey=12b1b8c7b71d4148b0f107f0fef8d4d9&country=us&category=$category");

      // Map<String, dynamic> jsonData = response.data;

      Map<String, dynamic> jsonDataa = response.data;

      // Convert Map to articles
      List<dynamic> articles = jsonDataa['articles'];
      List<ArticlesModel> articaleList = [];

      for (var article in articles) {
        // Check if required fields are present
        if (article['urlToImage'] != null && article['urlToImage'].isNotEmpty) {
          ArticlesModel articaleModel = ArticlesModel(
            url: article['url'],
            image: article['urlToImage'],
            title: article['title'],
            subtitle: article['description'],
          );

          articaleList.add(articaleModel);
        }
      }
      return articaleList;
    } catch (e) {
      return [];
    }
  }
}
