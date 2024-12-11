import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/home_view.dart';

void main() {
  NewsService().getNews();
  runApp(const MyApp());
}

// final dio = Dio();

// void getNews() async {
//   final response = await dio.get(
//       'https://newsapi.org/v2/top-headlines?country=us&apiKey=64ad603d2d434ca5932c5050b8d0dfc4');
//   print(response);
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
