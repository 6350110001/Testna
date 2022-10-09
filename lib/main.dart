import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_at_fb/login.dart';
import 'package:project_at_fb/product.dart';
import 'package:project_at_fb/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Flutter firebase auth ',
      home: const SplashScreen(),
    );
  }
 
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(
          children: [
            Image.asset('assets/PJ1.png',height: 400,width: 500,),
          ],
        ),
        backgroundColor: Colors.black,
        nextScreen:  Login(),
      splashIconSize: 250,
      duration: 4000,
      splashTransition: SplashTransition.scaleTransition,
    );

  }
}
