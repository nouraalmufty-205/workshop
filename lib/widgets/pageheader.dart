import 'package:flutter/material.dart';

class PageHearder extends StatelessWidget {
  final String title;
  const PageHearder({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 24),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(width: 55),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 26,
            color: Color(0xff5A88C6),
          ),
        ),
      ],
    );
  }
}
