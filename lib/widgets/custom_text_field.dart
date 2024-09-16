import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.preIcon,
    this.function,
  });
  final String hint;
  final IconData preIcon;
  final Function? function;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      style: TextStyle(
        fontFamily: 'suse',
        fontSize: 20.sp
      ),
      keyboardType: TextInputType.number,
      maxLength: 10,

      validator: (data){
        if(data!.isEmpty){
          return('Enter your phone number');
        }else if(!RegExp(r'^01[0-2]\s\d{1,8}$').hasMatch(data))
        {
          return 'Enter a valid number';
        }


      },
      decoration: InputDecoration(
        prefixIcon: Icon(preIcon),
        fillColor: Colors.white,
        filled: true,
        hintText: hint,
        focusColor: Colors.black,
        prefix: Text('+20',style: TextStyle(
          fontSize: 20.sp,
          color: Colors.black,
          fontFamily: 'suse'
        ),),
        hintStyle: TextStyle(fontFamily: 'suse',fontSize: 20.sp),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}



class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.preIcon,
  });
  final String hint;
  final IconData preIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      style: TextStyle(
          fontFamily: 'suse',
          fontSize: 20.sp
      ),

        decoration: InputDecoration(
        prefixIcon: Icon(preIcon),
        fillColor: Colors.white,
        filled: true,
        hintText: hint,
        focusColor: Colors.black,
        hintStyle: TextStyle(fontFamily: 'suse',fontSize: 20.sp),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}
