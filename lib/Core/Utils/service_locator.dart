import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque_jobfinder/Core/helper/api_services.dart';
import 'package:jobsque_jobfinder/Features/Authentication/data/Models/repos/auth_repo_impl.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/repos/complete_profile_repo_impl.dart';
import 'package:jobsque_jobfinder/Features/Home/data/repos/home_repo_implmentation.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/data/repos/apply_jop_repo_impl.dart';

final getIt = GetIt.instance;
void setupServicLocator() {
  getIt.registerSingleton<AuthRepoImpl>(
    AuthRepoImpl(
      ApiServices(
        dio: Dio(),
      ),
    ),
  );
  getIt.registerSingleton<HomeRepoImplmentaion>(
    HomeRepoImplmentaion(
      ApiServices(
        dio: Dio(),
      ),
    ),
  );
  getIt.registerSingleton<ApplyJopRepoImpl>(
    ApplyJopRepoImpl(
      apiServices: ApiServices(
        dio: Dio(),
      ),
    ),
  );
  getIt.registerSingleton<CompleteProfileRepoImpl>(
    CompleteProfileRepoImpl(
      apiServices: ApiServices(
        dio: Dio(),
      ),
    ),
  );
  
}
