import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class ListOfCategoryCards extends StatelessWidget {
  ListOfCategoryCards({super.key});
  final List<CategoryModel> Categories = [
    CategoryModel(image: 'assets/businessjpg.jpg', text: 'Business'),
    CategoryModel(image: 'assets/entertaiment.avif', text: 'Entertainment'),
    CategoryModel(image: 'assets/general.jpg', text: 'General'),
    CategoryModel(image: 'assets/health.avif', text: 'Health'),
    CategoryModel(image: 'assets/science.avif', text: 'Science'),
    CategoryModel(image: 'assets/sportsjpg.jpg', text: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', text: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(categoryModel: Categories[index]);
          }),
    );
  }
}
