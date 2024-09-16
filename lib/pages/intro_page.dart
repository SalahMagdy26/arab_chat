import 'package:chat_app/constants.dart';
import 'package:chat_app/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context,listen: false);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
            
              children: [
                SizedBox(height: 100.h,),
                Image.asset(
                  'assets/images/ain.png',
                  width: 130.w,
                  height: 130.h,
                ),
                SizedBox(height: 60.h,),
                Text(
                  'مرحباً بك في دردشة العرب',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Dexef',
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(height: 8.h,),
                Text(
                  'Welcome to Arab Chat',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Dexef',
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Language',style: TextStyle(
                      fontFamily: 'Dexef',
                      fontSize: 16.sp,
                    ),),

                    Text('اللغة',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Dexef',
                    ),)
                  ],
                ),
                SizedBox(height: 30.h,),
                Container(
                  padding:EdgeInsets.symmetric(horizontal: 8.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
            
                  ),
                  child: Column(
                    children: [
                      RadioListTile(
                        activeColor: const Color(0xff38B673),
                        title: Text('العربية',style: TextStyle(fontSize: 18.sp,fontFamily: 'Dexef')), // Display the title for option 1
                        value: 1, // Assign a value of 1 to this option
                        groupValue: selectedValue, // Use _selectedValue to track the selected option
                        onChanged: (value) {
                          setState(() {
                            selectedValue =
                            value!; // Update _selectedValue when option 1 is selected
                          });
                        },
                      ),
                      const Divider(),
                      RadioListTile(
                        activeColor: const Color(0xff38B673),
                        title: Text('English',style: TextStyle(fontSize: 18.sp,fontFamily: 'Dexef'),), // Display the title for option 1
                        value: 2, // Assign a value of 1 to this option
                        groupValue: selectedValue, // Use _selectedValue to track the selected option
                        onChanged: (value) {
                          setState(() {
                            selectedValue =
                            value!; // Update _selectedValue when option 1 is selected
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60.h,),
                GestureDetector(
                  onTap: (){
                    ap.isSignedIn == true ?
                        Navigator.pushNamed(context, 'ChatPage'):
                    Navigator.pushNamed(context, 'LoginPage');
                  },
                  child: SizedBox(
                    width: 130.w,
                    child: Container(
                      padding:const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: kBasicColor,
                        borderRadius: BorderRadius.circular(16.r),

                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Next ',style: TextStyle(color: Colors.white,fontFamily: 'Dexef',fontSize: 20.sp),),
                          const Icon(Icons.arrow_forward,color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
