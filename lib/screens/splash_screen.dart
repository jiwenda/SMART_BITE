import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_bite/common/style_extension.dart';
// import 'package:smart_bite/screens/home_page.dart';
import 'package:smart_bite/screens/onboard_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset(
              "assets/lotties/Animation - 1746687032601.json",
            ),
          ),
          Text("SMARTBITE", style: TTextStyle.heading3.copyWith(fontSize: 35)),
        ],
      ),
      nextScreen: OnboardPage(),
      backgroundColor: Tcolour.navBG,
      splashIconSize: 200,
      duration: 8000,
    );
  }
}
