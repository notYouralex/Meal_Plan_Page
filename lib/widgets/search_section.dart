import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 40),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Container(
            margin: EdgeInsets.all(10),
            child: SvgPicture.asset("assets/icons/Search.svg")
            ),
          suffixIcon: Container(
            margin: EdgeInsets.all(10),
            child: SvgPicture.asset("assets/icons/Filter.svg")
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none
          ),
          hint: Text("Search",
          style: TextStyle(
            color: Color(0xFFDDDADA)
          ),),
          fillColor: Colors.white,
          filled: true
        ),
      ),
    );
  }
}