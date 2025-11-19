import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice/widgets/category_section.dart';
import 'package:practice/widgets/popular_section.dart';
import 'package:practice/widgets/recommendation_section.dart';
import 'package:practice/widgets/search_section.dart';

class MealPlanPage extends StatelessWidget {
  const MealPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          SearchSection(),
          CategorySection(),
          RecommendationSection(),
          PopularSection(),
        ],
      ),

    );
  }
}

AppBar appBar() {
  return AppBar(
    centerTitle: true,
    title: Text("Breakfast",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
      ),
    leading: Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFF7F8F8),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: SvgPicture.asset("assets/icons/Arrow_Left_2.svg",height: 8,width: 8,),
      
      ),
    ),
    actions:[
      Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
        color: Color(0xFFF7F8F8),
        borderRadius: BorderRadius.circular(10)
        ),
        margin: EdgeInsets.only(left: 10,right: 16,top: 10,bottom: 10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset("assets/icons/dots.svg",),
        ),
      )
    ]
  );
}

