import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final Color color;
  final Color iconColor;
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    required this.color,
    required this.iconColor,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: color,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(25.r),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.symmetric(vertical: 15.h),
        prefixIcon: Icon(
          prefixIcon,
          color: iconColor,
        ),
      ),
    );
  }
}
