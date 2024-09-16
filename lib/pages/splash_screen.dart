import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../provider/auth_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context,listen: false);
    return AnimatedSplashScreen(splash: Column(
      children: [
        Center(
          child: LottieBuilder.asset('assets/images/Animation.json',),
        ),
      ],
    ),
        nextScreen: (ap.isSignedIn == true)?
              const  ChatPage()
            : const IntroPage(),
      splashIconSize: 400,
      backgroundColor: kReceiver ,

    );
  }
}
