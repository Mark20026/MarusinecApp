import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marusinec_app/utils/custom_textField.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.r),
                    bottomRight: Radius.circular(25.r),
                  ),
                ),
                height: 225.h,
                width: double.infinity,
              ),
            ],
          ),
          Positioned(
            top: 65.h,
            left: 25.w,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                CupertinoIcons.left_chevron,
                size: 40.sp,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 130.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              height: 50.h,
              alignment: Alignment.centerLeft,
              child: Text(
                "Hozd létre a fiókodat",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 33.sp,
                    fontWeight: FontWeight.bold),
                softWrap: true,
              ),
            ),
          ),
          Positioned(
              top: 270.h,
              right: 20.w,
              left: 20.w,
              child: Container(
                height: 500.h,
                child: Column(
                  children: [
                    const CustomTextField(
                      hintText: "Email",
                      prefixIcon: CupertinoIcons.mail,
                      color: Colors.white,
                      iconColor: Colors.grey,
                    ),
                    SizedBox(height: 30.h),
                    const CustomTextField(
                      hintText: "Teljes név",
                      prefixIcon: CupertinoIcons.person,
                      color: Colors.white,
                      iconColor: Colors.grey,
                    ),
                    SizedBox(height: 30.h),
                    const CustomTextField(
                      hintText: "Felhasználónév",
                      prefixIcon: CupertinoIcons.person_circle,
                      color: Colors.white,
                      iconColor: Colors.grey,
                    ),
                    SizedBox(height: 30.h),
                    const CustomTextField(
                      hintText: "Jelszó",
                      prefixIcon: CupertinoIcons.lock,
                      color: Colors.white,
                      iconColor: Colors.grey,
                    ),
                    SizedBox(height: 30.h),
                    const CustomTextField(
                      hintText: "Jelszó megerősítés",
                      prefixIcon: CupertinoIcons.lock,
                      color: Colors.white,
                      iconColor: Colors.grey,
                    ),
                    SizedBox(height: 30.h),
                    ElevatedButton(
                      onPressed: () {
                        // Bejelentkezési logika
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(
                            horizontal: 130.w, vertical: 15.h),
                      ),
                      child: Text(
                        "Regisztráció",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
