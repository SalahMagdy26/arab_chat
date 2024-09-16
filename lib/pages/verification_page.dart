import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/verification_text_field.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key,required this.verificationId});
  final String verificationId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 SizedBox(
                  height: 100.h,
                ),
                Text('Verification',
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontFamily: 'Dexef',
                    )),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'We have sent the verification code to ',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: 'Dexef',
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                 Text(
                  '+201097942235 ',
                  style: TextStyle(
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Edit your number',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VCTextField(),
                    VCTextField(),
                    VCTextField(),
                    VCTextField(),
                    VCTextField(),
                    VCTextField(),
                  ],
                ),
                const SizedBox(height: 350,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 170.w,
                      child: Container(
                        padding:EdgeInsets.symmetric(horizontal:8.w,vertical: 16.h),
                        decoration: BoxDecoration(
                          color:  Colors.grey[600],
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Text(
                          'Resend',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Dexef',
                              fontSize: 18.sp),
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, 'UserInfoPage');
                        },
                      child: SizedBox(
                        width: 170.w,
                        child: Container(
                          padding:EdgeInsets.symmetric(horizontal:8.w,vertical: 16.h),
                          decoration: BoxDecoration(
                            color: kBasicColor,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Text(
                            'Verify',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Dexef',
                                fontSize: 18.sp),
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

