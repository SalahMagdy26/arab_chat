import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRecordMassage extends StatelessWidget {
  const CustomRecordMassage(
      {super.key,
      required this.image,
      required this.color,
      required this.mainAxisAlignment,
      required this.backGColor});
  final String image;
  final Color color;
  final Color backGColor;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Container(
            padding: EdgeInsetsDirectional.only(
              end: 10.w,
            ),
            // width: 180.w,
            // height: 56.h,
            decoration: BoxDecoration(
                color: backGColor, borderRadius: BorderRadius.circular(16.r)),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsetsDirectional.only(start: 8.0),
                    child: Icon(Icons.play_arrow_rounded,
                      size: 28,
                      color: Colors.white,),
                  ),
                ),


                SizedBox(
                  width: 7.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 122.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(30, (index) {
                            return Container(
                              width: 2.w,
                              height: (index % 2 == 0) ? 8.h : 14.h,
                              margin: EdgeInsets.symmetric(horizontal: 1.w),
                              color: color,
                            );
                          }),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        '1:30',
                        style: TextStyle(fontSize: 9.sp, color: color),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 80.w,
                          ),
                          Text(
                            '6:06 PM',
                            style: TextStyle(
                              color: color,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
