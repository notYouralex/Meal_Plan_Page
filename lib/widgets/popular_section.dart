import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice/models/popular_model.dart';
import 'package:practice/widgets/section_title.dart';

class PopularSection extends StatelessWidget {
  PopularSection({super.key});

  final List<PopularModel> popularList = [
    PopularModel(
      name: 'Blueberry Pancake',
      level: 'Medium',
      duration: 30,
      cal: 230,
      iconPath: 'assets/icons/blueberry_pancake.svg',
    ),
    PopularModel(
      name: 'Salmon Nigiri',
      level: 'Medium',
      duration: 20,
      cal: 120,
      iconPath: 'assets/icons/salmon_nigiri.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 24, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: SectionTitle(title: 'Popular'),
          ),
          SizedBox(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: popularList.length,
              itemBuilder: popularCard,
            ),
          ),
        ],
      ),
    );
  }

  Widget? popularCard(context, index) => Container(
    height: 80,
    margin: EdgeInsets.only(left: 10, top: 10, right: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Color(0xFFFFFFFF),
          offset: Offset(-10, 0)
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(popularList[index].iconPath),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            spacing: 6,
            children: [
              Text(popularList[index].name,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(
                '${popularList[index].level} | ${popularList[index].duration} | ${popularList[index].cal}kcal',
                style: TextStyle(color: Color(0xFF7B6F72)),
              ),
            ],
          ),
        ),
        IconButton(
          icon: Container(
            margin: EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            child: SvgPicture.asset('assets/icons/button.svg'),
          ),
          onPressed: () => {},
        ),
      ],
    ),
  );
}
