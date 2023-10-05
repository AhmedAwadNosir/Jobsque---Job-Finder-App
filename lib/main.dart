import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_routs.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/service_locator.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/presentation/views/applied_jop_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Views/job_title_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Views/register_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Sign_IN/Views/sign_in_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Views/sucess_account_ilstration.dart';
import 'package:jobsque_jobfinder/Features/Chat/presentation/views/chat_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/repos/complete_profile_repo_impl.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/views/complete_profile_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/views/education_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/views/experience_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/views/personal_details_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/edit_profile_data/edit_profile_data_cubit.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/fetch_profile_data/fetch_profile_data_cubit.dart';
import 'package:jobsque_jobfinder/Features/Home/data/repos/home_repo_implmentation.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/states_manager/fetch_search_jops/fetch_search_jops_cubit.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/views/home_view.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/views/search_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/data/models/cv_file_model.dart';
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
import 'package:jobsque_jobfinder/Features/Profile/states_manager/cubit/fetch_cv_files_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FetchSearchJopsCubit(
                  getIt.get<HomeRepoImplmentaion>(),
                )),
        BlocProvider(
          create: (context) =>
              FetchProfileDataCubit(getIt.get<CompleteProfileRepoImpl>())
        ),
        BlocProvider(
          create: (context) => FetchCvFilesCubit()
        ),
        BlocProvider(
          create: (context) =>
              EditProfileDataCubit(getIt.get<CompleteProfileRepoImpl>()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        routes:AppRoutes.routes,
        initialRoute: SplashView.id,
      ),
    );
  }
}
