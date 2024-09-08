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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                alignment: Alignment.bottomLeft,
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
        (isEmpty)
            ? Image.asset(
                'assets/images/mic.png',
                width: 50,
                height: 50,
              )
            : Image.asset(
                'assets/images/send.png',
                width: 50,
                height: 50,
              ),
      ],
    );
  }
}
