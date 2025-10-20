import 'package:dartz/dartz.dart';
import 'package:domain/model/failure.dart';
import 'package:login/data/request/login_request.dart';
import 'package:login/data/response/login_response.dart';
import 'package:retrofit/dio.dart';

abstract class LoginRemoteDataSource {
  Future<Either<Failure, LoginResponse>> login(LoginRequest loginRequest);
}
