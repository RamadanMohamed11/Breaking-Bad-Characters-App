import 'package:breaking_bad_chars/core/utils/api_service.dart';
import 'package:breaking_bad_chars/features/home/data/repos/home_repo.dart';
import 'package:breaking_bad_chars/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiService>(ApiService(getIt<Dio>()));
  getIt.registerSingleton<HomeRepo>(HomeRepoImpl(getIt<ApiService>()));
}
