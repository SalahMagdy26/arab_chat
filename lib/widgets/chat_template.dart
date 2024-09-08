import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../pages/chatting_private_page.dart';

class BuildChatIcon extends StatelessWidget {
  const BuildChatIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ChattingPrivatePage()));
      },
      contentPadding: EdgeInsetsDirectional.zero,
      leading: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            backgroundImage: const NetworkImage(
                'https://lh3.googleusercontent.com/a/ACg8ocLd3tmE35cFb93pZQtZe-zEwmz76NjIiQS0wgB_edNJQkZyAOA=s288-c-no'),
            radius: 30.r,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 8.r,
          ),
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 7.r,
          ),
        ],
      ),
      title: Text(
        'Salah Magdy',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15.sp, fontFamily: 'Dexef'),
      ),
      subtitle: Text(
        'Hello,I\'m a Flutter developer',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: const Color(0xff274268),
            fontSize: 15.sp,
            fontFamily: 'Dexef'),
      ),
      trailing: Column(
        children: [
          const Text(
            '12:05 PM',
            style: TextStyle(color: Color(0xff8A8A8E), fontSize: 14),
          ),
          SizedBox(
            height: 6.h,
          ),
          CircleAvatar(
            backgroundColor: const Color(0xff8190A6),
            radius: 10.r,
            child: Center(
                child: Text(
                  '4',
                  style: TextStyle(color: Colors.white, fontSize: 14.sp),
                )),
          )
        ],
      ),
    );
  }
}