import 'package:dartz/dartz.dart';
import 'package:domain/model/failure.dart';
import 'package:domain/usecase/base_usecase.dart';
import 'package:login/domain/repository/login_repository.dart';

import '../../data/request/login_request.dart';
import '../model/login_model.dart';

class LoginUseCase implements BaseUseCase<LoginRequest, LoginModel> {
  final LoginRepository loginRepository;

  LoginUseCase(this.loginRepository);

  @override
  Future<Either<Failure, LoginModel>> execute(LoginRequest input) {
    return loginRepository.login(input);
  }
}
