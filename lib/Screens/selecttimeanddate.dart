import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workshopapp/Screens/appointment/widget/timeslot.dart';
import 'package:workshopapp/Screens/paymentscreen.dart';
import 'package:workshopapp/widgets/botton.dart';
import 'package:workshopapp/widgets/pageheader.dart';
import 'package:workshopapp/widgets/seeall.dart';

class SelectTimeAndDate extends StatefulWidget {
  const SelectTimeAndDate({super.key});

  @override
  State<SelectTimeAndDate> createState() => _SelectTimeAndDateState();
}

class _SelectTimeAndDateState extends State<SelectTimeAndDate> {
  final List<String> times = const ["10.00 AM", "11.00 AM", "12.00 PM"];
  List<DateTime?> _dates = [];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 46),
        child: Column(
          children: [
            PageHearder(title: "Select Time and Date"),
            50.verticalSpace,
            CalendarDatePicker2(
              config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.multi,
                selectedDayHighlightColor: const Color(0xff5A88C6),
                todayTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                weekdayLabelTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                controlsTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              value: _dates,
              onValueChanged: (dates) => _dates = dates,
            ),
            33.verticalSpace,
            SeeAll(title: "Available Time Slot"),
            42.verticalSpace,
            SizedBox(
              height: 70.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: times.length,
                separatorBuilder: (context, index) => const SizedBox(width: 12),
                itemBuilder: (context, index) {
                  return TimeSlotButton(time: times[index]);
                },
              ),
            ),
            42.verticalSpace,
            BlueButton(
              title: "Set Appointment",
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
    );
  }
}
