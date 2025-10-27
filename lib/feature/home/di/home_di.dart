import '../../../../global_imports.dart';

void initHomeDI() {
  getIt.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(getIt()),
  );

  getIt.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImpl(getIt()),
  );

  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(
      remote: getIt(),
      local: getIt(),
      networkInfo: getIt(),
    ),
  );

  getIt.registerLazySingleton<GetHomeUseCase>(() => GetHomeUseCase(getIt()));

  getIt.registerFactory(() => HomeCubit(getIt()));
}
