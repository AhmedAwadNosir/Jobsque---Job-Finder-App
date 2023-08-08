import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/splash_view.dart';

void main() {
  runApp(const JopFinderApp());
}

class JopFinderApp extends StatelessWidget {
  const JopFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashView.id: (context) => const SplashView(),
      },
      initialRoute: SplashView.id,
    );
  }
}
