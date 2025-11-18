import 'package:flutter/material.dart';
import 'package:practice/models/category_model.dart';
import 'package:practice/widgets/category_card.dart';
import 'package:practice/widgets/section_title.dart';

class CategorySection extends StatelessWidget {
   CategorySection({super.key});

  final List<CategoryModel> listCategory = [
    CategoryModel(
      name: 'Salad',
      iconPath: 'assets/icons/salad.svg',
      bgColor: Color(0xff9DCEFF),
    ),
    CategoryModel(
      name: 'Pancake',
      iconPath: 'assets/icons/cakes.svg',
      bgColor: Color(0xffEEA4CE),
    ),
    CategoryModel(
      name: 'Blueberry',
      iconPath: 'assets/icons/pie.svg',
      bgColor: Color(0xff9DCEFF),
    ),
    CategoryModel(
      name: 'Orange',
      iconPath: 'assets/icons/smoothie.svg',
      bgColor: Color(0xffEEA4CE),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        SectionTitle(title: "Category"),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listCategory.length,
            itemBuilder: (context, index) {
              return CategoryCard(categoryModel: listCategory[index]);
              }
          ),
        ),
      ],
    );
  }
}