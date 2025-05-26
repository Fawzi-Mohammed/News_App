import 'package:flutter/material.dart';
import 'package:news_app/Models/Category_model.dart';
import 'package:news_app/Views/category_view.dart';

class CategoryCadre extends StatelessWidget {
  const CategoryCadre({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category:category.categoryName ,
              );
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          //color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
