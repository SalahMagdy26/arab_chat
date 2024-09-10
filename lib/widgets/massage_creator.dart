import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatingMassageWidgets extends StatefulWidget {
  const CreatingMassageWidgets({super.key});

  @override
  State<CreatingMassageWidgets> createState() => _CreatingMassageWidgetsState();
}

class _CreatingMassageWidgetsState extends State<CreatingMassageWidgets> {
  bool isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 80,
          constraints: BoxConstraints(
            maxHeight: 300.h,
            minHeight: 36.h,
          ),
          child: TextField(
            onChanged: (val) {
              (val.isEmpty) ? isEmpty = true : isEmpty = false;
              setState(() {});
            },
            maxLines: 5,
            minLines: 1,
            cursorColor: Colors.black38,
            style: const TextStyle(
              fontFamily: 'araby'
            ),
            decoration: InputDecoration(
              hintText: 'Write massage here',
              contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
              hintStyle: TextStyle(
                fontSize: 15.sp,
                fontFamily: 'Dexef',
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              fillColor: const Color(0xffEAECEE),
              filled: true,
              prefixIcon: IconButton(
                color: Colors.black38,
                onPressed: () {},
                icon: const Icon(Icons.emoji_emotions_outlined),
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.attachment_rounded,
                  color: Colors.black38,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 7.w,
        ),
        (isEmpty)
            ? CircleAvatar(
                radius: 28.r,
                backgroundColor: kBasicColor,
                child: const Icon(
                  Icons.mic,
                  color: Colors.white,
                  size: 32,
                ),
              )
            : CircleAvatar(
                radius: 28.r,
                backgroundColor: kBasicColor,
                child: const Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                  size: 32,
                ),
              ),
      ],
    );
  }
}
