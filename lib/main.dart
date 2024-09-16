import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/intro_page.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/splash_screen.dart';
import 'package:chat_app/pages/user_info_page.dart';
import 'package:chat_app/provider/auth_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chat_app/pages/verification_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ArabChats());
}

class ArabChats extends StatelessWidget {
  const ArabChats({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_)=>AuthProvider()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              'LoginPage': (context)=> LoginPage(),
              'IntroPage': (context)=>const IntroPage(),
              'UserInfoPage': (context)=>const UserInfoPage(),
              'ChatPage': (context)=>const ChatPage(),
            },
            home: child,
          ),
        );
      },
      child: const SplashScreen(),
    );
  }

}

