import 'package:chat_app/constants.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextMassage extends StatelessWidget {
  const CustomTextMassage(
      {super.key,
      required this.backGColor,
      required this.messageType,
      required this.message});
  final Color backGColor;
  final MessageType messageType;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (messageType == MessageType.send)
          ? EdgeInsetsDirectional.only(start: 80.w,top: 8.h)
          : EdgeInsetsDirectional.only(end: 80.w,top: 8.h),
      child: Row(
        mainAxisAlignment: (messageType == MessageType.receive)
            ? MainAxisAlignment.start
            : MainAxisAlignment.end,
        children: [
          ClipPath(
            clipper: UpperNipMessageClipperTwo(
              messageType,
              nipWidth: 8,
            ),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 280.w
              ),
              padding: EdgeInsetsDirectional.only(
                  start: 15.w, end: 15.w, top: 8.h, bottom: 8.h),
              color: (messageType == MessageType.send)
                  ? kBasicColor
                  : kReceiver,
              child: Text(
                textAlign: TextAlign.right,
                message,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'araby',
                    color:  Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
