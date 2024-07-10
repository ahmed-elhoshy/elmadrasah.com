import 'package:dio/dio.dart';
import 'package:elmadrasah/Cubit/my_cubit.dart';
import 'package:elmadrasah/model/repository.dart';
import 'package:elmadrasah/model/webServices.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<MyCubit>(() => MyCubit(getIt()));

  ///lazy only used when needed

  getIt.registerLazySingleton<Repository>(() => Repository(getIt()));
  getIt.registerLazySingleton<Webservices>(() => Webservices(Dio()));
}
