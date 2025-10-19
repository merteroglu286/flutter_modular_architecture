import 'package:injectable/injectable.dart';

import 'AppSettingsProvider.dart';

@Injectable(as: AppSettingsProvider, env: [Environment.prod])
class ProdAppSettingProviderImpl extends AppSettingsProvider {
  @override
  String getAppLanguage() {
    return "English";
  }

  @override
  String getThemeType() {
    return "dark";
  }
}

@Injectable(as: AppSettingsProvider, env: [Environment.dev])
class DevAppSettingProviderImpl extends AppSettingsProvider {
  @override
  String getAppLanguage() {
    return "Turkish";
  }

  @override
  String getThemeType() {
    return "light";
  }
}
