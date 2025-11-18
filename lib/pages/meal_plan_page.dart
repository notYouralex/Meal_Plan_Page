import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice/widgets/search_section.dart';

class MealPlanPage extends StatelessWidget {
  const MealPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SearchSection(),
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
      color: Color(0xFFF7F8F8),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: SvgPicture.asset("assets/icons/Arrow_Left_2.svg",height: 8,width: 8,),
      ),
    ),
  );
}