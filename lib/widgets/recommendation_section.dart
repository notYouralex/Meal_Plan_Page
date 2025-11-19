import 'package:flutter/material.dart';
import 'package:practice/models/recommendation_model.dart';
import 'package:practice/widgets/recommendation_card.dart';
import 'package:practice/widgets/section_title.dart';

class RecommendationSection extends StatelessWidget {
  RecommendationSection({super.key});

  final List<RecommendationModel> listRecommendation = [
    RecommendationModel(bgColor: Color(0xFF92A3FD), name: 'Honey Pancake', level: 'Easy', duration: 30, cal: 180, iconPath: 'assets/icons/honey_pancakes.svg'),
    RecommendationModel(bgColor: Color(0xFFC58BF2), name: 'Canai Bread', level: 'Easy', duration: 20, cal: 230, iconPath: 'assets/icons/canai_bread.svg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, left: 10, right: 10), 
      color: Colors.amber,   
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
            padding: const EdgeInsets.only(left: 14),
            child: SectionTitle(title: "Reccomendation\nfor Diet",)          
        ),
        Container(
          height: 240,
          color: Colors.green,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listRecommendation.length,
            itemBuilder: (context, index) { 
              return RecommendationCard(recommendationModel: listRecommendation[index]); 
             },
            )
          )
        ],
      ),
    );
  }
}

