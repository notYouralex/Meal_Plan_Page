import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.categoryModel
  });

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 80,
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: categoryModel.bgColor.withAlpha(80)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFF7F8F8)
            ),
            child: SvgPicture.asset(categoryModel.iconPath, fit: BoxFit.scaleDown,),
          ),
          Text(categoryModel.name,
          style: TextStyle(color: Color(0xFF1D1617),fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }
}