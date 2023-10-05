import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jobsque_jobfinder/Core/Utils/Errors/failure.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/sharedpreferancs_util.dart';
import 'package:jobsque_jobfinder/Core/helper/api_services.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/data/repos/home_repo.dart';

class HomeRepoImplmentaion implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImplmentaion(this.apiServices);

  @override
  Future<Either<Failure, List<JopModel>>> fetchRecentJop() async {
    try {
      var data = await apiServices.get(
          endPoint: "/jobs",
          token: await SharedPreferencesUtil.getString(
            loginTokenkey,
          ));
      List<JopModel> recetnJops = [];
      for (var jop in data["data"]) {
        recetnJops.add(JopModel.fromJson(jop));
      }
      return right(recetnJops);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<JopModel>>> fetchSuggestedJop() async {
    try {
      var data = await apiServices.get(
          endPoint: "/jobs/sugest/2",
          token: await SharedPreferencesUtil.getString(loginTokenkey));
      List<JopModel> suggestedJops = [];
      for (var jop in data["data"]) {
        suggestedJops.add(JopModel.fromJson(jop));
      }
      return right(suggestedJops);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<JopModel>>> fetchSearchJops(
      {required String searchKey}) async {
    try {
      var data = await apiServices.post(
        endPoint: "/jobs/search",
        token: await SharedPreferencesUtil.getString(loginTokenkey),
        body: {"name": searchKey},
      );

      List<JopModel> searchJops = [];
      for (var jop in data["data"]) {
        searchJops.add(JopModel.fromJson(jop));
      }
      return right(searchJops);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
