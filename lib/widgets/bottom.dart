import 'package:flutter/material.dart';

class BlueBottom extends StatelessWidget {
  final String title;
  const BlueBottom({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff5A88C6),
          foregroundColor: Colors.white,
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
