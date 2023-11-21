import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/core/app/app_prefs.dart';
import 'package:task/core/app/network/app_service_client.dart';
import 'package:task/features/auth/repository/auth_repository_impl.dart';

import '../../features/auth/repository/auth_repository.dart';
import 'cache_helper.dart';
import 'network/dio_factory.dart';
import 'network/network_info.dart';

final di = GetIt.instance..allowReassignment = true;

Future<void> initAppModule() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  di.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  di.registerLazySingleton<CacheImpl>(
    () => CacheImpl(di()),
  );
  di.registerLazySingleton<AppPreferences>(
    () => AppPreferences(cacheImpl: di()),
  );

  di.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      internetConnectionChecker: InternetConnectionChecker(),
    ),
  );

  di.registerFactory<DioFactory>(
    () => DioFactory(appPreferences: di()),
  );

  final dio = await di<DioFactory>().getDio();

  /// Services
  di.registerFactory<AppServicesClient>(
    () => AppServicesClient(dio),
  );
  di.registerFactory<AuthRepository>(
    () => AuthRepositoryImpl(
      networkInfo: di(),
      appServicesClient: di(),
    ),
  );
}
