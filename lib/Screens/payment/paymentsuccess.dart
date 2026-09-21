import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workshopapp/Screens/home/homescrn.dart';
import 'package:workshopapp/Screens/navbar.dart';
import 'package:workshopapp/widgets/botton.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 3),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Color(0xff5A88C6),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 70.sp),
              ),
              47.verticalSpace,
              Text(
                "Congratulations",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff5A88C6),
                ),
              ),
              18.verticalSpace,
              Text(
                "Your Payment Is Successfully",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
              const Spacer(flex: 3),

              BlueButton(
                title: "Back",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBarScreen(),
                    ),
                  );
                },
              ),
              30.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
