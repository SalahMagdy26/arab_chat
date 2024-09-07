import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture.asset('assets/images/log.svg'),
                Text(
                  'Enter your phone number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Dexef',
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                const CustomTextField(
                  hint: 'Phone Number',
                  preIcon: Icons.phone,
                ),
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: SizedBox(
                        width: 100.w,
                        child: Container(
                          padding:const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: kBasicColor,
                            borderRadius: BorderRadius.circular(16.r),
            
                          ),
                          child:const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_back_rounded,color: Colors.white,),
                              Text(' Back',style: TextStyle(color: Colors.white,fontFamily: 'Dexef',fontSize: 20),),
            
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'VerificationPage');
                      },
                      child: SizedBox(
                        width: 130.w,
                        child: Container(
                          padding:const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: kBasicColor,
                            borderRadius: BorderRadius.circular(16.r),
            
                          ),
                          child:const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Get code',style: TextStyle(color: Colors.white,fontFamily: 'Dexef',fontSize: 18),),
                              Icon(Icons.arrow_forward,color: Colors.white,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
