import 'package:flutter/material.dart';
import 'package:workshopapp/Screens/home/homescreens/categoriesscreen.dart';

class SeeAll extends StatelessWidget {
  final String title;
  const SeeAll({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "See All",
            style: TextStyle(fontSize: 16, color: Color(0xff858585)),
          ),
        ),
      ],
    );
  }
}
