import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/service_locator.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/presentation/views/applied_jop_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Views/register_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Sign_IN/Views/sign_in_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Views/sucess_account_ilstration.dart';
import 'package:jobsque_jobfinder/Features/Chat/presentation/views/chat_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/views/complete_profile_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/views/education_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/views/experience_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/views/personal_details_view.dart';
import 'package:jobsque_jobfinder/Features/Home/data/repos/home_repo_implmentation.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/states_manager/fetch_search_jops/fetch_search_jops_cubit.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/views/home_view.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/views/search_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/data/models/cv_file_model.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/views/apply_jop_view.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/views/jop_applied_succesfuly.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/change_password_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/email_adress_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/phone_number_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/two_step_verification_methode_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/two_step_verification_send_code_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/two_step_verification_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/verify_code_view.dart';
import 'package:jobsque_jobfinder/Features/Notefication/presentation/views/notefication_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Views/onboarding_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Views/splash_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/edit_profile_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/help_center_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/languages_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/login_and_security_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/notefication_seting_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/portfolio_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/privacy_policy_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/terms%20_conditions_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/forgot%20_password/views/check_emial_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/forgot%20_password/views/forgot_password_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/forgot%20_password/views/password_reset_successfully_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/forgot%20_password/views/reset_password_view.dart';
import 'package:jobsque_jobfinder/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive_flutter/hive_flutter.dart';
// Import the generated file

bool? isViewed;
bool? isLoginIn;
void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white, // Set the status bar color to white
      systemNavigationBarColor: Colors.white
      // Set the status bar icons to dark
      ));

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getBool("isViewd");
  isLoginIn = prefs.containsKey(isLogin);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupServicLocator();
  await Hive.initFlutter();
  Hive.registerAdapter(CvFileModelAdapter());
  await Hive.openBox<CvFileModel>(cvFilebox);
  await Hive.openBox<CvFileModel>(otherCvsFilebox);
  runApp(const JopFinderApp());
}

class JopFinderApp extends StatelessWidget {
  const JopFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchSearchJopsCubit(
        getIt.get<HomeRepoImplmentaion>(),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        routes: {
          SplashView.id: (context) => const SplashView(),
          OnboardingView.id: (context) => const OnboardingView(),
          SignInView.id: (context) => const SignInView(),
          RegisterView.id: (context) => const RegisterView(),
          SuccessAcountIlstrationView.id: (context) =>
              const SuccessAcountIlstrationView(),
          ForgotPasswordView.id: (context) => const ForgotPasswordView(),
          CheckEmialView.id: (context) => const CheckEmialView(),
          ResetPasswordView.id: (context) => const ResetPasswordView(),
          PasswordResetSuccessfullyView.id: (context) =>
              const PasswordResetSuccessfullyView(),
          HomeView.id: (context) => const HomeView(),
          SearchView.id: (context) => const SearchView(),
          ApplyJopView.id: (context) => const ApplyJopView(),
          JopAppliedSuccesfuly.id: (context) => const JopAppliedSuccesfuly(),
          NoteficationView.id: (context) => NoteficationView(),
          ChatView.id: (context) => const ChatView(),
          EditProfileView.id: (context) => const EditProfileView(),
          PortFolioView.id: (context) => const PortFolioView(),
          LanguagesView.id: (context) => const LanguagesView(),
          NoteficationSetingView.id: (context) =>
              const NoteficationSetingView(),
          LoginAndSecurityView.id: (context) => const LoginAndSecurityView(),
          EmailAdressView.id: (context) => const EmailAdressView(),
          PhoneNumberView.id: (context) => const PhoneNumberView(),
          ChangePasswordView.id: (context) => const ChangePasswordView(),
          TwoStepVerificationView.id: (context) =>
              const TwoStepVerificationView(),
          TwoStepVerificationMethodeView.id: (context) =>
              const TwoStepVerificationMethodeView(),
          TwoStepVerificationSendCodeView.id: (context) =>
              const TwoStepVerificationSendCodeView(),
          VerifyCodeView.id: (context) => const VerifyCodeView(),
          HelpCenterView.id: (context) => const HelpCenterView(),
          TermsConditionsView.id: (context) => const TermsConditionsView(),
          PrivacyPolicyView.id: (context) => const PrivacyPolicyView(),
          AppliedJopView.id: (context) => const AppliedJopView(),
          CompleteProfileView.id: (context) => const CompleteProfileView(),
          PersonalDetailsView.id: (context) => const PersonalDetailsView(),
          EducationView.id: (context) => const EducationView(),
          ExperienceView.id: (context) => const ExperienceView(),
        },
        initialRoute: SplashView.id,
      ),
    );
  }
}
