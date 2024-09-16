import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';

class CustomRecordMassage extends StatefulWidget {
  const CustomRecordMassage({super.key, required this.messageType});
  final MessageType messageType;

  @override
  State<CustomRecordMassage> createState() => _CustomRecordMassageState();
}

class _CustomRecordMassageState extends State<CustomRecordMassage> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (widget.messageType == MessageType.send)
          ? EdgeInsetsDirectional.only(start: 80.w, top: 8.h)
          : EdgeInsetsDirectional.only(end: 80.w, top: 8.h),
      child: Row(
        mainAxisAlignment: (widget.messageType == MessageType.receive)
            ? MainAxisAlignment.start
            : MainAxisAlignment.end,
        children: [
          ClipPath(
            clipper: UpperNipMessageClipperTwo(
              widget.messageType,
              nipWidth: 8,
            ),
            child: Container(
              constraints: BoxConstraints(maxWidth: 280.w),
              padding: EdgeInsetsDirectional.only(
                  start: 10.w, end: 10.w, top: 8.h, bottom: 8.h),
              color: (widget.messageType == MessageType.send)
                  ? kBasicColor
                  : kReceiver,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
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
                  GestureDetector(
                    onTap: () {
                      (isOn) ? isOn = false : isOn = true;
                      setState(() {});
                    },
                    child: Icon(
                      (isOn == true)
                          ? Icons.pause_rounded
                          : Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),

                  Column(
                    children: [
                      recordWave(),
                      SizedBox(height: 5.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '0:12',
                            style: TextStyle(color: Colors.white, fontSize: 10.sp),
                          ),
                          SizedBox(width: 80.w,),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '08:12',
                                style: TextStyle(color: Colors.white, fontSize: 10.sp),
                              ),
                              SizedBox(width: 5.w,),
                              Image.asset('assets/images/seen.png',color: Colors.white,width: 20.w,height: 20.h,)

                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  recordWave() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(45, (index) {
        return Container(
          width: 2.w,
          height: (index % 2 == 0) ? 8.h : 16.h,
          margin: EdgeInsets.symmetric(horizontal: 1.w),
          color: Colors.white,
        );
      }),
    );
  }
}
