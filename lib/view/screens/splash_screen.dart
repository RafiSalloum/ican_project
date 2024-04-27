import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:ican_project/view/screens/home_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 4000,
      splash:
      Lottie.asset('assets/animation/ican_animation.json'),
      // Column(
      //   children: [
      //     Image.asset('assets/images/logo.png', height: 200, width: 200,),
      //     const Text('for Technical Solutions'),
      //   ],
      // ),
      splashIconSize: 250,
      animationDuration: const Duration(milliseconds: 800),
      centered: true,
      splashTransition: SplashTransition.scaleTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      nextScreen: const HomeScreen(),
    );
  }
}
