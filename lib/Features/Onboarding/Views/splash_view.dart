import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Sign_IN/Views/sign_in_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/onboarding_view.dart';
import 'package:jobsque_jobfinder/main.dart';

import '../functions/splash_navigation_controler.dart';
import 'Widgets/circle_container.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const id = 'splashview';
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    spalshNavigationControlar(context: context,destination:isViewed==null? OnboardingView.id:SignInView.id);
    super.initState();
  }

  



  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Stack(children: [
          CircleContainer(
              height: screenHeight * 0.8620,
              width: screenWidth * 1.87,
              color: 0XFFF9FBFF),
          CircleContainer(
              height: screenHeight * 0.657,
              width: screenWidth * 1.424,
              color: 0XFFF4F8FF),
          CircleContainer(
              height: screenHeight * 0.423,
              width: screenWidth * 0.917,
              color: 0XFFF0F5FF),
          CircleContainer(
            height: screenHeight * 0.233,
            width: screenWidth * 0.507,
            color: 0XFFE8F0FF,
            image: AppImages.appPLogo,
          )
        ]),
      ),
    );
  }
}
