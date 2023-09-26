import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque_jobfinder/Core/helper/api_services.dart';
import 'package:jobsque_jobfinder/Features/Home/data/repos/home_repo_implmentation.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;
void setupServicLocator() {
  getIt.registerSingleton<HomeRepoImplmentaion>(
    HomeRepoImplmentaion(
      ApiServices(
        dio: Dio(),
      ),
    ),
  );

}