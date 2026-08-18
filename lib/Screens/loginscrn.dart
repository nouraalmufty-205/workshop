import 'package:flutter/material.dart';
import 'package:workshopapp/widgets/bottom.dart';
import 'package:workshopapp/widgets/validator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Create New Account",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    color: Color(0xff5A88C6),
                  ),
                ),
              ),
              SizedBox(height: 42),
              Text(
                "Full Name",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Your Full Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                ),
              ),

              SizedBox(height: 16),
              ValidatedTextField(
                type: FieldType.password,
                label: 'Password',
                controller: passwordController,
              ),
              SizedBox(height: 24),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 10),
              ValidatedTextField(
                type: FieldType.email,
                label: 'Email',
                controller: emailController,
              ),
              SizedBox(height: 24),
              Text(
                "Mobile Number",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Your Mobile Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(height: 40),
              BlueBottom(title: "Sign Up"),
              SizedBox(height: 29),
              Align(
                alignment: AlignmentGeometry.center,
                child: Text(
                  "Or",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff858585),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/google.png"),
                  SizedBox(width: 30),
                  Image.asset("assets/facebook.png"),
                ],
              ),
              SizedBox(height: 19),

              Align(
                alignment: AlignmentGeometry.center,
                child: Text.rich(
                  TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(fontSize: 18, color: Color(0xff858585)),
                    children: [
                      TextSpan(
                        text: "Sign up",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff5A88C6),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
