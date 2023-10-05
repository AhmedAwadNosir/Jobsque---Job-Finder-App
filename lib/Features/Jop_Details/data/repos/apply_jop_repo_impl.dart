import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jobsque_jobfinder/Core/Utils/Errors/failure.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/sharedpreferancs_util.dart';
import 'package:jobsque_jobfinder/Core/helper/api_services.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/data/models/apply_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/data/repos/apply_jop_repo.dart';

class ApplyJopRepoImpl implements AppLyJopRepo {
  final ApiServices apiServices;

  ApplyJopRepoImpl({required this.apiServices});
  @override
  Future<Either<Failure, dynamic>> applyJop(
      {required ApplyJopModel applyModal}) async {
    try {
      FormData formData = FormData.fromMap({
        "cv_file": await MultipartFile.fromFile(applyModal.cvFilePath,
            filename: (applyModal.cvFilePath).split('/').last),
        "name": applyModal.userName,
        "email": applyModal.email,
        "mobile": applyModal.mobile,
        "work_type": applyModal.workType,
        "other_file": await MultipartFile.fromFile(applyModal.otherFilePath,
            filename: applyModal.otherFilePath.split('/').last),
        "jobs_id": applyModal.jopId,
        "user_id": applyModal.userId,
      });
      var tokenkey = await SharedPreferencesUtil.getString(loginTokenkey);
      log(tokenkey.toString());
      var response = await apiServices.post(
          endPoint: "/apply",
          body: formData,
          token: await SharedPreferencesUtil.getString(loginTokenkey));

      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
