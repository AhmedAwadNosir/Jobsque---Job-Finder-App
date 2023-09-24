import 'package:dartz/dartz.dart';
import 'package:jobsque_jobfinder/Core/Utils/Errors/failure.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/data/repos/home_repo.dart';

class HomeRepoImplmentaion implements HomeRepo{
  @override
  Future<Either<Failure, List<JopModel>>> fetchRecentJop() {
    // TODO: implement fetchRecentJop
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<JopModel>>> fetchSuggestedJop() {
    // TODO: implement fetchSuggestedJop
    throw UnimplementedError();
  }

}