// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marusinec_app/firebase_auth/firebase_auth_services.dart';
import 'package:marusinec_app/screens/home.dart';
import 'package:marusinec_app/utils/custom_textField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuthServices _auth = FirebaseAuthServices();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade600,
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  height: 600.h,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25.r),
                          bottomRight: Radius.circular(25.r))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200.h,
                        width: double.infinity,
                      ),
                      Image.asset(
                        "lib/images/logo_dumbell.png",
                        height: 125.h,
                      ),
                      Text(
                        "DÁVID MARUSINEC",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 27.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "TRAINING APP",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 27.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 470.h,
            left: 20.w,
            right: 20.w,
            child: Container(
              padding: EdgeInsets.all(20.0),
              height: 280.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  CustomTextField(
                    controller: emailController,
                    hintText: "Email",
                    prefixIcon: CupertinoIcons.mail,
                    color: Colors.grey.shade200,
                    iconColor: Colors.white,
                  ),
                  SizedBox(height: 10.h),
                  CustomTextField(
                    controller: passwordController,
                    hintText: "Jelszo",
                    prefixIcon: CupertinoIcons.lock,
                    color: Colors.grey.shade200,
                    iconColor: Colors.white,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                      width: double.infinity,
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Elfelejtetted a jelszavad?",
                        style: TextStyle(color: Colors.blue, fontSize: 13.sp),
                      )),
                  SizedBox(height: 20.h),
                  ElevatedButton(
                    onPressed: () {
                      _signIn();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(
                          horizontal: 105.w, vertical: 12.h),
                    ),
                    child: Text(
                      "Bejelentkezés",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _signIn() async {
  String email = emailController.text;
  String password = passwordController.text;

  try {
    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print("A felhasználó sikeresen bejelentkezett");
      Navigator.push(context, MaterialPageRoute(builder: (builder) => HomeScreen()));
    } else {
      print("Valamilyen hiba történt");
    }
  } catch (e) {
    print("Hiba történt a bejelentkezés során: $e");
  }
}

}
