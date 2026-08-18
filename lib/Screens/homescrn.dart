import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            children: [
              Row(
                children: [
                  // Container(
                  //   width: 70,
                  //   height: 70,
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     image: DecorationImage(
                  //       fit: BoxFit.cover,
                  //       image: Image.asset("assets/man.jpg").image,
                  //     ),
                  //   ),
                  // ),
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
              SizedBox(height: 44),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search Doctor",
                  suffixIcon: Icon(Icons.mic_outlined),

                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[30],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
