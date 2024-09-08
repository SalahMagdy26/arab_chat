import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/chat_date.dart';
import '../widgets/massage_creator.dart';
import '../widgets/record_massage.dart';
import 'package:custom_clippers/custom_clippers.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsetsDirectional.only(start: 12.w, end: 12.w, bottom: 24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 160.h,
                // width: 393,
                child: ListView(
                  reverse: true,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    const DateOfTheChat(
                      text: 'Today',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/record_read.svg',
                      color: Color(0xff5D718D),
                      mainAxisAlignment: MainAxisAlignment.start,
                      backGColor: Color(0xffF7F8F9),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/play_voice.svg',
                      color: Colors.white,
                      mainAxisAlignment: MainAxisAlignment.end,
                      backGColor: Color(0xff4C9EF7),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/record_read.svg',
                      color: Color(0xff5D718D),
                      mainAxisAlignment: MainAxisAlignment.start,
                      backGColor: Color(0xffF7F8F9),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/play_voice.svg',
                      color: Colors.white,
                      mainAxisAlignment: MainAxisAlignment.end,
                      backGColor: Color(0xff4C9EF7),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const DateOfTheChat(text: 'Yesterday'),
                    SizedBox(
                      height: 16.h,
                    ),
                    const CustomTextMassage(
                        messageType: MessageType.send,
                        message: 'مرحبا أيها المتكاسل الصغير',
                        backGColor:kBasicColor),
                    SizedBox(
                      height: 20.h,
                    ),
                    const DateOfTheChat(
                      text: 'Today',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/record_read.svg',
                      color: Color(0xff5D718D),
                      mainAxisAlignment: MainAxisAlignment.start,
                      backGColor: Color(0xffF7F8F9),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/play_voice.svg',
                      color: Colors.white,
                      mainAxisAlignment: MainAxisAlignment.end,
                      backGColor: Color(0xff4C9EF7),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/record_read.svg',
                      color: Color(0xff5D718D),
                      mainAxisAlignment: MainAxisAlignment.start,
                      backGColor: Color(0xffF7F8F9),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/play_voice.svg',
                      color: Colors.white,
                      mainAxisAlignment: MainAxisAlignment.end,
                      backGColor: Color(0xff4C9EF7),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const DateOfTheChat(text: 'Yesterday'),
                    SizedBox(
                      height: 16.h,
                    ),
                    const CustomTextMassage(
                        message: 'hello mr beta3 ',
                        messageType: MessageType.send,
                        backGColor: kBasicColor),
                    SizedBox(
                      height: 20.h,
                    ),
                    const DateOfTheChat(
                      text: 'Today',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/record_read.svg',
                      color: Color(0xff5D718D),
                      mainAxisAlignment: MainAxisAlignment.start,
                      backGColor: Color(0xffF7F8F9),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/play_voice.svg',
                      color: Colors.white,
                      mainAxisAlignment: MainAxisAlignment.end,
                      backGColor: Color(0xff4C9EF7),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/record_read.svg',
                      color: Color(0xff5D718D),
                      mainAxisAlignment: MainAxisAlignment.start,
                      backGColor: Color(0xffF7F8F9),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/play_voice.svg',
                      color: Colors.white,
                      mainAxisAlignment: MainAxisAlignment.end,
                      backGColor: Color(0xff4C9EF7),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const DateOfTheChat(text: 'Yesterday'),
                    SizedBox(
                      height: 16.h,
                    ),
                    const CustomTextMassage(
                      message: 'hello dear ! how are you',
                        messageType: MessageType.receive,
                        backGColor: Colors.white),
                  ],
                ),
              ),
              const CreatingMassageWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}

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
      padding: (messageType==MessageType.send)?
      EdgeInsetsDirectional.only(start: 80.w):
      EdgeInsetsDirectional.only(end: 80.w),
      child: ClipPath(
        clipper: UpperNipMessageClipperTwo(messageType),
        child: Container(
          padding: EdgeInsetsDirectional.only(
              start: 25.w, end: 20.w, top: 8.h, bottom: 8.h),
          color: backGColor,
          child: Text(
            textAlign: TextAlign.center,
            message,
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'suse',
              color: (messageType==MessageType.send)?
                  Colors.white:Colors.black
            ),
          ),

        ),
      ),
    );
  }
}
