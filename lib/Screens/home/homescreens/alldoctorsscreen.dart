import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workshopapp/Screens/home/widgets/doctorcard.dart';
import 'package:workshopapp/widgets/pageheader.dart';
import 'package:workshopapp/widgets/search_slider.dart';

class AllDoctorsScreen extends StatefulWidget {
  const AllDoctorsScreen({super.key});

  @override
  State<AllDoctorsScreen> createState() => _AllDoctorsScreenState();
}

class _AllDoctorsScreenState extends State<AllDoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 46),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageHearder(title: "All Doctors"),
              24.verticalSpace,
              SearchSlider(),
              30.verticalSpace,
              Doctorcard(image: 'assets/doctor1.png'),
              30.verticalSpace,
              Doctorcard(image: 'assets/doctor2.png'),
              30.verticalSpace,
              Doctorcard(image: 'assets/doctor3.png'),
              30.verticalSpace,
              Doctorcard(image: 'assets/doctor1.png'),
            ],
          ),
        ),
      ),
    );
  }
}
