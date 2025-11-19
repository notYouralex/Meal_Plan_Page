
import 'package:flutter/material.dart';

class RecommendationModel{

  String iconPath;
  String name;
  String level;
  int duration;
  int cal;
  Color bgColor;

  RecommendationModel({
    required this.bgColor,
    required this.name,
    required this.level,
    required this.duration,
    required this.cal,
    required this.iconPath,
  });

}