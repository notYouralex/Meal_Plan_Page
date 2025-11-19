import 'package:flutter/material.dart';
import 'package:practice/models/category_model.dart';
import 'package:practice/widgets/category_card.dart';
import 'package:practice/widgets/section_title.dart';

class CategorySection extends StatelessWidget {
    CategorySection({super.key,});

  final List<CategoryModel> listCategory = [
    CategoryModel(name: 'Salad', iconPath: 'assets/icons/salad.svg', bgColor: Color(0xFF9DCEFF)),
    CategoryModel(name: 'Cakes', iconPath: 'assets/icons/cakes.svg', bgColor: Color(0xFFEEA4CE)),
    CategoryModel(name: 'Pie', iconPath: 'assets/icons/pie.svg', bgColor: Color(0xFF9DCEFF)),
    CategoryModel(name: 'Smoothie', iconPath: 'assets/icons/smoothie.svg', bgColor: Color(0xFFEEA4CE)),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.only(left: 14),
            child: SectionTitle( title: "Category")
            ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CategoryCard(categoryModel: listCategory[index]);
              },
              itemCount: listCategory.length,
              
            ),
          )
        ],
      ),
    );
  }
}



