import 'package:dartz/dartz.dart';
import 'package:jobsque_jobfinder/Core/Utils/Errors/failure.dart';

abstract class AuthRepo{
  Future<Either<Failure,dynamic>>register({required String userName,required String email,required String password});
  Future<Either<Failure,dynamic>>signIn({required String email,required String password});
}