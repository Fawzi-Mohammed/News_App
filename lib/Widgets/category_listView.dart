import 'package:flutter/material.dart';
import 'package:news_app/Models/Category_model.dart';
import 'package:news_app/Widgets/category_carde.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
  CategoryModel(image: 'assets/technology.jpeg', categoryName: 'technology'),
    CategoryModel(image: 'assets/entertaiment.avif', categoryName: 'entertainment'),
    CategoryModel(image: 'assets/business.avif', categoryName: 'business'),
    CategoryModel(image: 'assets/general.avif', categoryName: 'general'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'health'),
     CategoryModel(image: 'assets/science.avif', categoryName: 'science'),
     CategoryModel(image: 'assets/sports.avif', categoryName: 'sports'),

 ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:categories.length,
        itemBuilder: (context, index) => CategoryCadre(category: categories[index],),
      ),
    );
  }
}
