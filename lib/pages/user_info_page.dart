import 'dart:io';
import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  File? _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Arab Chat',
          style: TextStyle(
              color: Colors.white, fontFamily: 'Dexef', fontSize: 30.sp),
        ),
        backgroundColor: kBasicColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 50),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: 240.w,
                    height: 220.h,
                    decoration: BoxDecoration(
                      color: kBasicColor,
                      borderRadius: BorderRadius.circular(120.r),
                    ),
                    child: (_image != null)
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(120.r),
                            child: Image.file(
                              _image!,
                              fit: BoxFit.cover,
                              width: 240.w,
                              height: 220.h,

                            ),
                          )
                        : Image.asset('assets/images/def_image.png'),
                  ),
                  //Add profile photo section
                  Positioned(
                    bottom: 20.h,
                    right: 20.w,
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => Container(
                              height: 100.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50.w, vertical: 20.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: kBasicColor,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      var image = await ImagePicker()
                                          .pickImage(source: ImageSource.camera);
                                      setState(() {
                                        if (image != null) {
                                          _image = File(image.path);
                                        }
                                      });
                                    },
                                    child: Column(
                                      children: [
                                        const Icon(
                                          Icons.add_a_photo_rounded,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          'From camera',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontFamily: 'Dexef'),
                                        )
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      var image = await ImagePicker()
                                          .pickImage(source: ImageSource.gallery);
                                      setState(() {
                                        _image = File(image!.path);
                                      });
                                    },
                                    child: Column(
                                      children: [
                                        const Icon(
                                          Icons.image,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          'From gallery',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontFamily: 'Dexef'),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.add_a_photo_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              const CustomTextField(hint: 'Name', preIcon: Icons.person),
              SizedBox(
                height: 16.h,
              ),
              const CustomTextField(
                  hint: 'Bio', preIcon: Icons.sticky_note_2_rounded),
              SizedBox(
                height: 100.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'ChatPage');
                },
                child: SizedBox(
                  width: 120.w,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: kBasicColor,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Continue',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Dexef',
                              fontSize: 20.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
