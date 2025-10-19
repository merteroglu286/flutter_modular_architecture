
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:app_settings/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureAppSettingsDependencies(GetIt getIt, String? environment) => getIt.init(environment: environment);