import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageHearder extends StatelessWidget {
  final String title;
  final Color? color;
  const PageHearder({super.key, required this.title, this.color});

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

        Expanded(
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
                  color: color ?? const Color(0xff5A88C6),
                ),
              ),
            ),
          ),
        ),
        48.horizontalSpace,
      ],
    );
  }
}
