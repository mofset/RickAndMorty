class AppConfig {
  static const String baseUrl = 'https://rickandmortyapi.com/api';
  static const Duration connectionTimeout = Duration(seconds: 10);
  static const Duration receiveTimeout = Duration(seconds: 10);
  static const int resyncTimeInHours = 3;
}
