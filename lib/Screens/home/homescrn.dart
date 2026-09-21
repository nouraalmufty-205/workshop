import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workshopapp/Screens/home/homescreens/categoriesscreen.dart';
import 'package:workshopapp/Screens/home/homescreens/alldoctorsscreen.dart';
import 'package:workshopapp/Screens/home/widgets/catagory_tile.dart';
import 'package:workshopapp/Screens/home/widgets/homw_slider.dart';
import 'package:workshopapp/Screens/navbar.dart';
import 'package:workshopapp/widgets/search_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: Image.asset("assets/man.jpg").image,
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text(
                          "Hi,Welcome Back",
                          style: TextStyle(color: Color(0xff858585)),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Pankaj Sharma",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    Image.asset("assets/Frame.png"),
                  ],
                ),
                44.verticalSpace,
                SearchSlider(),
                30.verticalSpace,

                HomeSlider(),
                20.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoriesScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff858585),
                        ),
                      ),
                    ),
                  ],
                ),
                30.verticalSpace,
                SizedBox(
                  height: 80,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    separatorBuilder: (context, index) => 12.horizontalSpace,
                    itemBuilder: (context, index) {
                      final titles = ['Denteeth', 'Theripist', 'surgeon'];
                      return CatagoryTile(title: titles[index]);
                    },
                  ),
                ),
                34.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All Doctors",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllDoctorsScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff858585),
                        ),
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset('assets/alldoctor.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<String> images = ['assets/man.jpg', 'assets/Frame.png'];
