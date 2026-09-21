import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workshopapp/payment/paymentsuccess.dart';
import 'package:workshopapp/payment/widget/paymentmethod.dart';
import 'package:workshopapp/widgets/botton.dart';
import 'package:workshopapp/widgets/pageheader.dart';

class Paymentscreen extends StatefulWidget {
  const Paymentscreen({super.key});

  @override
  State<Paymentscreen> createState() => _PaymentscreenState();
}

class _PaymentscreenState extends State<Paymentscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5A88C6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 32),
              child: PageHearder(title: "Payment", color: Colors.white),
            ),
            71.verticalSpace,
            Center(
              child: Text(
                "\$120.00",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 56.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            57.verticalSpace,
            Container(
              width: 430.w,
              height: 607.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 41),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    29.verticalSpace,
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Doctor Chanaling Payment Method",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    29.verticalSpace,
                    Row(
                      children: [
                        PaymentMethod(title: "Card"),
                        22.horizontalSpace,
                        PaymentMethod(title: "Cash"),
                      ],
                    ),
                    27.verticalSpace,
                    Text(
                      "Card Number",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    15.verticalSpace,
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "1234 8896 1145 0896",
                        fillColor: Colors.grey.shade100,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    27.verticalSpace,
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Expiry Date",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              15.verticalSpace,
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: "10/02/2022",
                                  fillColor: Colors.grey.shade100,
                                  hintStyle: TextStyle(color: Colors.black87),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        20.horizontalSpace,
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CVV",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              15.verticalSpace,
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey.shade100,
                                  hintText: "204",
                                  hintStyle: TextStyle(color: Colors.black87),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    27.verticalSpace,
                    Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    15.verticalSpace,
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        hintText: "Pankaj Sharma",
                        hintStyle: TextStyle(color: Colors.black87),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    20.verticalSpace,

                    BlueButton(
                      title: "Pay Now",
                      onPressed: () => PaymentSuccess(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
