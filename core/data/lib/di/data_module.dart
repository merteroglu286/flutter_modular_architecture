import 'package:data/di/data_module_keys.dart';
import 'package:datastore/provider/preferences/preferences_provider.dart';
import 'package:datastore/provider/session/session_provider.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../factory/dio_factory.dart';

@module
abstract class DataModule {

  // provide base url
  @Named(DataModuleKeys.baseUrl) // a tag for this string
  String provideBaseUrl(PreferencesProvider preferencesProvider) =>
      preferencesProvider.getBaseUrl();

  @Named(DataModuleKeys.accessToken) // a tag for this string
  String provideAccessToken(SessionProvider sessionProvider) =>
      sessionProvider.getAccessToken();

  @Named(DataModuleKeys.language) // a tag for this string
  String provideLanguage(PreferencesProvider preferencesProvider) =>
      preferencesProvider.getAppLanguage();

  @lazySingleton
  Dio dio(
    @Named("BaseUrl") String baseUrl,
    @Named("AccessToken") String accessToken,
    @Named("Language") String language,
  ) {
    final dioFactory = DioFactory(
      baseUrl: baseUrl,
      accessToken: accessToken,
      language: language,
    );

    return dioFactory.getDio();
  }
}
