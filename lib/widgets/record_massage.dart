import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class CustomRecordMassage extends StatelessWidget {
  const CustomRecordMassage({super.key, required this.messageType});

  final MessageType messageType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (messageType == MessageType.send)
          ? EdgeInsetsDirectional.only(start: 80.w, top: 8.h)
          : EdgeInsetsDirectional.only(end: 80.w, top: 8.h),
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
              constraints: BoxConstraints(maxWidth: 280.w),
              padding: EdgeInsetsDirectional.only(
                  start: 5.w, end: 15.w, top: 8.h, bottom: 8.h),
              color:
                  (messageType == MessageType.send) ? kBasicColor : kReceiver,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 18.r,
                        backgroundImage:
                            const AssetImage('assets/images/def_image.png'),
                      ),
                      const Positioned(
                          right: -3,
                          bottom: -1,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.grey,
                              child: Icon(
                            Icons.mic,
                            color: Colors.white,
                            size: 15,
                          )))
                    ],
                  ),
                  const Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 36,
                  ),
                  recordWave(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  recordWave() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(45, (index) {
            return Container(
              width: 2.w,
              height: (index % 2 == 0) ? 8.h : 14.h,
              margin: EdgeInsets.symmetric(horizontal: 1.w),
              color: Colors.white,
            );
          }),
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(
          '0:12',
          style: TextStyle(color: Colors.white, fontSize: 10.sp),
        )
      ],
    );
  }
}
