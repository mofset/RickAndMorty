import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/app_config.dart';
import 'package:rick_and_morty/data/repositories/connectivity_service.dart';
import 'package:rick_and_morty/dio_client.dart';
import 'package:rick_and_morty/presentation/controllers/main_page_controller.dart';
import 'package:rick_and_morty/services/database_service.dart';
import 'package:rick_and_morty/services/database_service_interface.dart';

import 'data/repositories/characters_repository.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies(String environment) =>
    getIt.init(environment: environment);

abstract class Env {
  static const dev = 'dev';
  static const test = 'test';
  static const prod = 'prod';
}

Future<void> registerServices() async {
  getIt.registerSingletonAsync<IDatabaseService>(
      () async => await DatabaseService().initAsync());
  getIt.registerFactory<ConnectivityService>(() => ConnectivityService());
  final dio = createDioClient(
    AppConfig.baseUrl,
    AppConfig.connectionTimeout,
    AppConfig.receiveTimeout,
  );
  getIt.registerLazySingleton<RestClient>(() => RestClient(dio));

  getIt.registerLazySingleton(
    () => MainPageController(
      restClient: getIt<RestClient>(),
      dBService: getIt<IDatabaseService>(),
    ),
  );

  await getIt.allReady();
}
