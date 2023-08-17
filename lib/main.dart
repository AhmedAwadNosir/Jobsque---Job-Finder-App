import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Views/sign_in_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/onboarding_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/splash_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        systemNavigationBarColor:
            Colors.white // Set your desired status bar color here
        ),
  );
  runApp(const JopFinderApp());
}

class JopFinderApp extends StatelessWidget {
  const JopFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        SplashView.id: (context) => const SplashView(),
        OnboardingView.id: (context) => const OnboardingView(),
        SignInView.id: (context) => const SignInView(),
      },
      initialRoute: SplashView.id,
    );
  }
}
