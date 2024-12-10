import 'package:dio/dio.dart';

class NewsService {
  final Dio dio = Dio();
  getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=64ad603d2d434ca5932c5050b8d0dfc4');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    print(articles);
  }
}
