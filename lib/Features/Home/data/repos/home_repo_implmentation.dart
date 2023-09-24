import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jobsque_jobfinder/Core/Utils/Errors/failure.dart';
import 'package:jobsque_jobfinder/Core/helper/api_services.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/data/repos/home_repo.dart';

class HomeRepoImplmentaion implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImplmentaion(this.apiServices);

  @override
  Future<Either<Failure, List<JopModel>>> fetchRecentJop() async {
    try {
      var data = await apiServices.get(endPoint: "/jobs");
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
      var data = await apiServices.get(endPoint: "/jobs/sugest/2");
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
}
