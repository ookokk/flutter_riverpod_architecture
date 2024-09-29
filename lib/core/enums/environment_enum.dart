enum EnvironmentEnum {
  env,
  baseUrl,
  accessToken,
  apiKey,
}

extension EnvironmentEnumExtension on EnvironmentEnum {
  String get defination {
    switch (this) {
      case EnvironmentEnum.env:
        return '.env';
      case EnvironmentEnum.baseUrl:
        return 'BASE_URL';
      case EnvironmentEnum.accessToken:
        return 'ACCESS_TOKEN';
      case EnvironmentEnum.apiKey:
        return 'API_KEY';
      default:
        return '';
    }
  }
}
