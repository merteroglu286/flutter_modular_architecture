import 'package:data/network_info/network_info.dart';
import 'package:data/network_info/network_info_impl.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:login/data/remote/login_remote_data_source.dart';
import 'package:login/data/remote/login_remote_data_source_impl.dart';
import 'package:login/data/service/login_service.dart';
import 'package:login/domain/usecase/login_usecase.dart';

import '../repository/login_repository_impl.dart';
import '../../domain/repository/login_repository.dart';

@module
abstract class LoginModule {
  @lazySingleton
  LoginService provideLoginService(Dio dio) {
    return LoginService(dio);
  }

  @lazySingleton
  NetworkInfo provideNetworkInfo() => NetworkInfoImpl();

  @lazySingleton
  LoginRemoteDataSource provideLoginRemoteDataSource(
    LoginService loginService,
    NetworkInfo networkInfo,
  ) => LoginRemoteDataSourceImpl(loginService, networkInfo);

  @lazySingleton
  LoginRepository provideLoginRepository(
    LoginRemoteDataSource loginRemoteDataSource,
  ) {
    return LoginRepositoryImpl(loginRemoteDataSource);
  }

  @lazySingleton
  LoginUseCase provideLoginUseCase(LoginRepository loginRepository) {
    return LoginUseCase(loginRepository);
  }
}
