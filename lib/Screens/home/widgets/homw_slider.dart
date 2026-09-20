import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 160.0,
            autoPlay: true,

            viewportFraction: 1,

            onPageChanged: (i, s) {
              setState(() {
                activeIndex = i;
              });
            },
          ),

          items: images
              .map(
                (i) => Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(i),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 10),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: images.length,

          effect: WormEffect(
            activeDotColor: Colors.blue,
            dotColor: Colors.grey,
            dotHeight: 10,
            dotWidth: 10,
            spacing: 4,
          ),
        ),
      ],
    );
  }
}

List<String> images = [
  'assets/slider2.jpg',
  'assets/slider1.jpg',
  'assets/slider2.jpg',
  'assets/slider1.jpg',
];
