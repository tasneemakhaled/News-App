import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_of_category_cards.dart';
import 'package:news_app/widgets/news_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text.rich(TextSpan(children: [
          TextSpan(
            text: 'News',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
              text: 'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ))
        ])),
      ),
      body: Column(
        children: [
          ListOfCategoryCards(),
          SizedBox(
            height: 20,
          ),
          NewsListView(),
        ],
      ),
    );
  }
}
