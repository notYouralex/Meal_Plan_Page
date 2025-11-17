import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 16, right: 20),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Container(
            margin: EdgeInsets.all(10),
            child: SvgPicture.asset('assets/icons/Search.svg',),
          ), 
          suffixIcon: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(right: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset('assets/icons/Line_18.svg',),
                SizedBox(width: 10,),
                SvgPicture.asset('assets/icons/Filter.svg',)
              ],
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
          hint: Text('Search Pancake...',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFFBDBDBD),
            ),
            )
        ),
      ),
    );
  }
}