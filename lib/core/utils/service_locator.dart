import 'package:bookstore/features/Home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

// Creating a singleton instance of GetIt
final getIt = GetIt.instance;

// Function to setup the service locator and register dependencies
void setupServiceLocator() {
  // Registering the singleton instance of ApiService
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  // Registering the singleton instance of HomeRepoImpl
  // HomeRepoImpl depends on ApiService, so we retrieve it from the service locator
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>(),
  ));
}
