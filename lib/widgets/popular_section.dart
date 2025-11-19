import 'package:flutter/material.dart';
import 'package:practice/widgets/section_title.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.only(top: 30,left: 30),
      color: Colors.blue,
      child: Column(
        children: [
          SectionTitle(title: 'Popular')
        ],
      ),
    );
  }
}
