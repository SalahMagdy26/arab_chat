import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/chat_date.dart';
import '../widgets/massage_creator.dart';
import '../widgets/record_massage.dart';
import 'package:custom_clippers/custom_clippers.dart';

import '../widgets/text_message.dart';

class ChattingPrivatePage extends StatelessWidget {
  const ChattingPrivatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55.h,
        backgroundColor: kBasicColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            size: 28.sp,
          ),
        ),
        title: Column(
          children: [
            Text(
              'Salah Magdy',
              style: TextStyle(
                  fontSize: 20.sp, fontFamily: 'Dexef', color: Colors.white),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              'Last seen recently',
              style: TextStyle(
                  color: const Color(0xffababaf),
                  fontSize: 14.sp,
                  fontFamily: 'Dexef',
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            radius: 22.r,
            backgroundImage: const AssetImage('assets/images/def_image.png'),
          ),
          SizedBox(
            width: 16.w,
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/1.3.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  start: 12.w, end: 12.w, bottom: 60.h),
              child: const Column(
                children: [

                  DateOfTheChat(text: 'Yesterday'),

                  CustomTextMassage(
                      messageType: MessageType.send,
                      message: 'مرحبا أيها المتكاسل الصغير',
                      backGColor: kBasicColor),

                  CustomTextMassage(
                      message: 'هلا والله يا ولدي ',
                      messageType: MessageType.receive,
                      backGColor: kBasicColor),

                  DateOfTheChat(
                    text: 'Today',
                  ),

                  CustomTextMassage(
                      message: 'السلام عليكم ورحمة الله وبركاته',
                      messageType: MessageType.receive,
                      backGColor: Colors.white),
                  CustomRecordMassage(messageType: MessageType.send,),
                  CustomRecordMassage(messageType: MessageType.receive,),
                ],
              ),
            ),
          ),
          const Positioned(
              bottom: 5, left: 10, child: CreatingMassageWidgets()),
        ],
      ),
    );
  }
}


