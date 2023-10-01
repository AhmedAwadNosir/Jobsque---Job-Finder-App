import 'package:dartz/dartz.dart';
import 'package:jobsque_jobfinder/Core/Utils/Errors/failure.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/models/profile_data_model.dart';

abstract class CompleteProfileRepo {
  Future<Either<Failure, ProfileDataModel>> editProfileData(
      {required ProfileDataModel profileDataModel});
  Future<Either<Failure, ProfileDataModel>> fetchProfileData();
}
