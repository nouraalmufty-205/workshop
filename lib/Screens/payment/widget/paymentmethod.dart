import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethod extends StatefulWidget {
  final String title;
  const PaymentMethod({super.key, required this.title});

  @override
  State<PaymentMethod> createState() => _PaymentmethodState();
}

class _PaymentmethodState extends State<PaymentMethod> {
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
        width: 155.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: isSelected ? Color(0xff5A88C6) : Colors.grey.shade100,
        ),
        child: Center(
          child: Text(
            "${widget.title} Payment",
            style: TextStyle(
              fontSize: 15.sp,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
