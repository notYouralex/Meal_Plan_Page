import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: categoryModel.bgColor.withAlpha(80),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: SvgPicture.asset(categoryModel.iconPath, height: 30),
          ),
          Text(categoryModel.name),
        ],
      ),
    );
  }
}