import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Create_Account/Views/job_title_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Create_Account/Views/register_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Sign_Up/Views/sign_in_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Create_Account/Views/sucess_account_ilstration.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Create_Account/Views/work_location_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/onboarding_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/splash_view.dart';
import 'package:jobsque_jobfinder/Features/forgot%20_password/views/check_emial_view.dart';
import 'package:jobsque_jobfinder/Features/forgot%20_password/views/forgot_password_view.dart';
import 'package:jobsque_jobfinder/Features/forgot%20_password/views/password_reset_successfully_view.dart';
import 'package:jobsque_jobfinder/Features/forgot%20_password/views/reset_password_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

 bool? isViewed ;
void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        systemNavigationBarColor:
            Colors.white // Set your desired status bar color here
        ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getBool("isViewd");
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
        RegisterView.id: (context) => const RegisterView(),
        JobTitleView.id: (context) => const JobTitleView(),
        WorkLocationView.id: (context) => const WorkLocationView(),
        SuccessAcountIlstrationView.id: (context) =>
            const SuccessAcountIlstrationView(),
        ForgotPasswordView.id: (context) => const ForgotPasswordView(),
        CheckEmialView.id: (context) => const CheckEmialView(),
        ResetPasswordView.id: (context) => const ResetPasswordView(),
        PasswordResetSuccessfullyView.id: (context) =>
            const PasswordResetSuccessfullyView()
      },
      initialRoute: SplashView.id,
    );
  }
}
