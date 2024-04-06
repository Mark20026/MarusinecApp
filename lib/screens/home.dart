import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marusinec_app/firebase_auth/firebase_auth_services.dart';
import 'package:marusinec_app/screens/login.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
            Navigator.push(context, MaterialPageRoute(builder: (builder) => const LoginScreen()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 105.w, vertical: 12.h),
          ),
          child: Text(
            "Kijelentkezes",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
