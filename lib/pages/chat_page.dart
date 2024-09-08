import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/chat_template.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kBasicColor,
        title: Text(
          'Arab Chat ',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Dexef',
            fontSize: 24.sp,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => const BuildChatIcon(),
            separatorBuilder: (context, index) => SizedBox(
                  height: 1.h,
                ),
            itemCount: 15),
      ),
    );
  }
}


