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

AppBar appBar(){
  return AppBar(
    centerTitle: true,

    leading: Container(
      margin: EdgeInsets.only(left: 20),
      child: IconButton(
        icon: SvgPicture.asset('assets/icons/Arrow_Left_2.svg',
          height: 30
        ),
        onPressed: () => {},
      ),
    ),

    title: Text('Breakfast',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
    ),

    actions: [
      Container(
        color: Color(0xFFF7F8F8),
        margin: EdgeInsets.only(right: 20),
        child: IconButton(
          icon: SvgPicture.asset('assets/icons/dots.svg',
          height: 6,
          ),
          onPressed: () => {},
        ),
      ) 
    ],

  );
}