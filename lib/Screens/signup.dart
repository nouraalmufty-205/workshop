import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workshopapp/widgets/botton.dart';
import 'package:workshopapp/widgets/forgotpasswrodshhet.dart';
import 'package:workshopapp/widgets/validator.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "WELCOME",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 26.sp,
                    color: Color(0xff5A88C6),
                  ),
                ),
              ),
              SizedBox(height: 42),
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                ),
              ),
              25.verticalSpace,

              Text(
                "Korem ipsum dolor sit amet, consectetur adipiscing elit.",
                style: TextStyle(fontSize: 18, color: Color(0xff858585)),
              ),
              62.verticalSpace,

              Text(
                "Email",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                ),
              ),
              10.verticalSpace,

              ValidatedTextField(
                type: FieldType.email,
                label: 'Email',
                controller: emailController,
              ),
              24.verticalSpace,

              Text(
                "Password",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                ),
              ),
              16.verticalSpace,

              ValidatedTextField(
                type: FieldType.password,
                label: 'Password',
                controller: passwordController,
              ),
              16.verticalSpace,

              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      useSafeArea: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) => ForgotPasswordBottomSheet(),
                    );
                  },
                  child: const Text(
                    "Forgot password",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              70.verticalSpace,

              BlueButton(title: "Sign In"),
              29.verticalSpace,

              Align(
                alignment: AlignmentGeometry.center,
                child: Text(
                  "Or",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff858585),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/google.png"),
                  30.horizontalSpace,

                  Image.asset("assets/facebook.png"),
                ],
              ),
              19.verticalSpace,

              Align(
                alignment: AlignmentGeometry.center,
                child: Text.rich(
                  TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(fontSize: 18.sp, color: Color(0xff858585)),
                    children: [
                      TextSpan(
                        text: "Sign up",
                        style: TextStyle(
                          fontSize: 16.sp,
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
