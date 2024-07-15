import 'package:dio/dio.dart';
import 'package:elmadrasah/Cubit/my_cubit.dart';
import 'package:elmadrasah/model/days_repository.dart';
import 'package:elmadrasah/model/webServices.dart';
import 'package:get_it/get_it.dart';

import 'model/purposes_repository.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<MyCubit>(() => MyCubit(getIt(), getIt()));

  ///lazy only used when needed

  getIt.registerLazySingleton<DaysRepository>(() => DaysRepository(getIt()));
  getIt.registerLazySingleton<PurposesRepository>(
      () => PurposesRepository(getIt()));
  getIt.registerLazySingleton<Webservices>(
      () => Webservices(createAndSetupDio()));
}

Dio createAndSetupDio() {
  Dio dio = Dio();
  dio
    ..options.connectTimeout = Duration(seconds: 5) // 1 second connect timeout
    ..options.receiveTimeout = Duration(seconds: 10);
  dio.interceptors.add(LogInterceptor(
      requestBody: true,
      error: true,
      requestHeader: false,
      responseHeader: false,
      request: true,
      responseBody: true));

  return dio;
}
