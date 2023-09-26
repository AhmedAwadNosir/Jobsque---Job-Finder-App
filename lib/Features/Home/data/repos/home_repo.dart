import 'package:dartz/dartz.dart';
import 'package:jobsque_jobfinder/Core/Utils/Errors/failure.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<JopModel>>> fetchSuggestedJop();
  Future<Either<Failure,List<JopModel>>> fetchRecentJop();
  Future<Either<Failure,List<JopModel>>> fetchSearchJops({required String searchKey});
}
