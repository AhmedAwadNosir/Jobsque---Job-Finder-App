import 'package:dartz/dartz.dart';
import 'package:jobsque_jobfinder/Core/Utils/Errors/failure.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/data/models/apply_jop_model.dart';

abstract class AppLyJopRepo {
  Future<Either<Failure, dynamic>> applyJop({required ApplyJopModel applyModal});
}
