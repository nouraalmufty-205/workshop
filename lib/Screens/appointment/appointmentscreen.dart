import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workshopapp/Screens/appointment/widget/timeslot.dart';
import 'package:workshopapp/Screens/paymentscreen.dart';
import 'package:workshopapp/widgets/botton.dart';
import 'package:workshopapp/widgets/pageheader.dart';
import 'package:workshopapp/widgets/seeall.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});
  final List<String> times = const ["10.00 AM", "11.00 AM", "12.00 PM"];
  final List<String> days = const ["Sun 4", "Mon 5", "Tue 6"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageHearder(title: "Appointment"),
              37.verticalSpace,
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset(
                      "assets/rectman.png",
                      height: 132.h,
                      width: 132.w,
                    ),
                  ),
                  21.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Dr.Pankaj",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          17.horizontalSpace,
                          Container(
                            height: 30.h,
                            width: 30.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: Colors.lightBlue.shade100,
                            ),
                            child: Icon(Icons.chat_bubble_outline, size: 14),
                          ),
                          17.horizontalSpace,
                          Container(
                            height: 30.h,
                            width: 30.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: Colors.lightBlue.shade100,
                            ),
                            child: Icon(Icons.call, size: 14),
                          ),
                        ],
                      ),
                      Text(
                        "denteeth",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff5A88C6),
                        ),
                      ),
                      30.verticalSpace,
                      Text(
                        "\$120.00",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff5A88C6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              44.verticalSpace,
              Text(
                "Details",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              17.verticalSpace,
              Text(
                "Worem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo",
                style: TextStyle(fontSize: 13, color: Color(0xff858585)),
              ),
              44.verticalSpace,
              SeeAll(title: "Working Hours"),
              26.verticalSpace,
              SizedBox(
                height: 70.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: times.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 12),
                  itemBuilder: (context, index) {
                    return TimeSlotButton(time: times[index]);
                  },
                ),
              ),
              29.verticalSpace,
              SeeAll(title: "Date"),
              26.verticalSpace,
              SizedBox(
                height: 70.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: days.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 12),
                  itemBuilder: (context, index) {
                    return TimeSlotButton(time: days[index]);
                  },
                ),
              ),
              40.verticalSpace,
              BlueButton(
                title: "Book an Appointment",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Paymentscreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
