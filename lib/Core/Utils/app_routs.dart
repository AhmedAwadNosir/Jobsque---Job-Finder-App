import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/presentation/views/applied_jop_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Views/interested_job_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Views/register_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Views/sucess_account_ilstration.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Sign_IN/Views/sign_in_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/forgot%20_password/views/check_emial_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/forgot%20_password/views/forgot_password_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/forgot%20_password/views/password_reset_successfully_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/forgot%20_password/views/reset_password_view.dart';
import 'package:jobsque_jobfinder/Features/Chat/presentation/views/chat_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/views/complete_profile_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/views/education_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/views/experience_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/views/personal_details_view.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/views/home_view.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/views/search_view.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/views/jop_applied_succesfuly.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/change_password_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/phone_number_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/two_step_verification_methode_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/two_step_verification_send_code_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/two_step_verification_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/verify_code_view.dart';
import 'package:jobsque_jobfinder/Features/Notefication/presentation/views/notefication_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Views/onboarding_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Views/splash_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/help_center_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/languages_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/login_and_security_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/notefication_seting_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/portfolio_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/privacy_policy_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/terms%20_conditions_view.dart';

abstract class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    SplashView.id: (context) => const SplashView(),
    OnboardingView.id: (context) => const OnboardingView(),
    SignInView.id: (context) => const SignInView(),
    RegisterView.id: (context) => const RegisterView(),
    InterstedJobView.id: (context) => InterstedJobView(),
    SuccessAcountIlstrationView.id: (context) =>
        const SuccessAcountIlstrationView(),
    ForgotPasswordView.id: (context) => const ForgotPasswordView(),
    CheckEmialView.id: (context) => const CheckEmialView(),
    ResetPasswordView.id: (context) => const ResetPasswordView(),
    PasswordResetSuccessfullyView.id: (context) =>
        const PasswordResetSuccessfullyView(),
    HomeView.id: (context) => const HomeView(),
    SearchView.id: (context) => const SearchView(),
    JopAppliedSuccesfuly.id: (context) => const JopAppliedSuccesfuly(),
    NoteficationView.id: (context) => NoteficationView(),
    ChatView.id: (context) => const ChatView(),
    PortFolioView.id: (context) => const PortFolioView(),
    LanguagesView.id: (context) => const LanguagesView(),
    NoteficationSetingView.id: (context) => const NoteficationSetingView(),
    LoginAndSecurityView.id: (context) => const LoginAndSecurityView(),
    PhoneNumberView.id: (context) => const PhoneNumberView(),
    ChangePasswordView.id: (context) => const ChangePasswordView(),
    TwoStepVerificationView.id: (context) => const TwoStepVerificationView(),
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
  };
}
