import 'package:chat_app/constants.dart';
import 'package:chat_app/pages/splash_screen.dart';
import 'package:chat_app/pages/verification_page.dart';
import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    super.key,
  });
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController phoneController = TextEditingController();
   FirebaseAuth auth = FirebaseAuth.instance;
   Country selectedCountry = Country(
      phoneCode: '+2',
      countryCode: 'EG',
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: 'Egypt',
      example: 'Egypt',
      displayName: 'Egypt',
      displayNameNoCountryCode: 'EG',
      e164Key: '');
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
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
                  TextFormField(
                    controller: phoneController,
                    cursorColor: Colors.black,
                    style: TextStyle(fontFamily: 'suse', fontSize: 20.sp),
                    keyboardType: TextInputType.phone,
                    maxLength: 11,
                    onChanged: (data) {
                      formKey.currentState?.validate();
                    },
                    validator: (data) {
                      if (data!.isEmpty) {
                        return ('Enter your phone number');
                      } else if (!RegExp(r'^01[0125][0-9]{8}$')
                          .hasMatch(data)) {
                        return 'Enter a valid number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: SizedBox(
                        width: 100.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 8.w,),
                            const Icon(Icons.phone),
                            Text('${selectedCountry.flagEmoji} ${selectedCountry.phoneCode}',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'suse',

                            ),),
                          ],
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Phone number',
                      focusColor: Colors.black,
                      // prefix: Text(
                      //   '+2',
                      //   style: TextStyle(
                      //       fontSize: 20.sp,
                      //       color: Colors.black,
                      //       fontFamily: 'suse'),
                      // ),
                      hintStyle: TextStyle(fontFamily: 'suse', fontSize: 20.sp),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          width: 100.w,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: kBasicColor,
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ),
                                Text(
                                  ' Back',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Dexef',
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {

                          Navigator.pushNamed(context, 'VerificationPage');

                        },
                        child: SizedBox(
                          width: 130.w,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: kBasicColor,
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Get code',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Dexef',
                                      fontSize: 18),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
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
      ),
    );
  }
  // void sendPhoneNumber(){
  //   final ap = Provider.of<AuthProvider>(context,listen: false);
  //   String phoneNumber = phoneController.text.trim();
  //   ap.signInWithPhone(context,phoneNumber);
  // }
}
