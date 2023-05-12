import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:bookstore/core/utils/api_service.dart';
import 'package:bookstore/features/Home/data/repo/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      apiService: getIt.get<ApiService>(),
    ),
  );
}
