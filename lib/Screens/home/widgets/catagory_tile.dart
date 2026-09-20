import 'package:flutter/material.dart';

class CatagoryTile extends StatelessWidget {
  final String title;

  const CatagoryTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 149,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),

            color: Color(0xff5A88C6),
          ),

          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
