import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateOfTheChat extends StatelessWidget {
  const DateOfTheChat({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
        child: Container(
          padding:
              EdgeInsetsDirectional.symmetric(horizontal: 7.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: const Color(0xffEFEFEF),
            borderRadius: BorderRadius.circular(11.r),
          ),
          child: Text(
            text,
            style: TextStyle(
                color: const Color(0xff001127),
                fontSize: 12.sp,
                fontFamily: 'Dexef',
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
