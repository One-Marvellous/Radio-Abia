import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
            gapPadding: 12,
          ),
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
            gapPadding: 12,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
            gapPadding: 12,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset("assets/svg/search.svg"),
          ),
          hintText: "Search",
          hintStyle: const TextStyle(
            color: Color(0XFF515151),
            fontWeight: FontWeight.w500,
            fontSize: 13,
          )),
    );
  }
}
