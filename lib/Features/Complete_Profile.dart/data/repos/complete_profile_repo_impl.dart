import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jobsque_jobfinder/Core/Utils/Errors/failure.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/sharedpreferancs_util.dart';
import 'package:jobsque_jobfinder/Core/helper/api_services.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/models/profile_data_model.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/repos/complete_profile_repo.dart';

class CompleteProfileRepoImpl implements CompleteProfileRepo {
  final ApiServices apiServices;

  CompleteProfileRepoImpl({required this.apiServices});
  @override
  Future<Either<Failure, ProfileDataModel>> editProfileData(
      {required ProfileDataModel profileDataModel}) async {
    try {
      String tokenKey = await SharedPreferencesUtil.getString(loginTokenkey);
      var response = await apiServices.put(
          endPoint:
              "/user/profile/edit?bio=${profileDataModel.bio}&address=${profileDataModel.address}&mobile=${profileDataModel.mobile}&language=${profileDataModel.language}&interested_work=${profileDataModel.interstedWork}&offline_place=${profileDataModel.offlinePlace}&remote_place=${profileDataModel.remotePlace}&experience=${profileDataModel.exceprience}&personal_detailed=${profileDataModel.personalDetail}&education=${profileDataModel.education}",
          token: tokenKey);
      return right(ProfileDataModel.fromJson(response["data"]));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, ProfileDataModel>> fetchProfileData() async {
    try {
      String tokenKey = await SharedPreferencesUtil.getString(loginTokenkey);
      var response = await apiServices.get(
          endPoint: "/user/profile/portofolios", token: tokenKey);
      return right(ProfileDataModel.fromJson(response["data"]["profile"]));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
