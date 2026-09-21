import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeSlotButton extends StatefulWidget {
  final String time;

  const TimeSlotButton({super.key, required this.time});

  @override
  State<TimeSlotButton> createState() => _TimeSlotButtonState();
}

class _TimeSlotButtonState extends State<TimeSlotButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: 70.h,
        width: 170.w,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF6E85B7) : const Color(0xFFF2F2F2),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Text(
          widget.time,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
