
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/models/recommendation_model.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key, required this.recommendationModel
  });

  final RecommendationModel recommendationModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10),
      height: 238,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), 
        color: recommendationModel.bgColor.withAlpha(80)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(recommendationModel.iconPath),
          Column(
            children: [
              Text(recommendationModel.name,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF1D1617)),),
              Text('${recommendationModel.level}|${recommendationModel.duration}|${recommendationModel.cal}kcal|',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF7B6F72)),)
            ],
          ),
          ElevatedButton(
            style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF92A3FD))
            ), 
            onPressed: () {}, 
            child: Text('View'),

          )
        ],
      ),
    );
  }
}