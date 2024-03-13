import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:retoflutter/core/bloc/news_bloc.dart';

final getIt = GetIt.instance;

void setup() {
  registerCore();
  registerNews();
}

void registerCore() {
  getIt.registerSingleton<Dio>(
    Dio(
      BaseOptions(baseUrl: 'www.enanitos.com'),
    ),
  );
}

void registerNews() {
  getIt.registerSingleton<NewsService>(
    NewsService(
      getIt<Dio>(),
    ),
  );
  getIt.registerSingleton<NewsRepository>(
    NewsRepository(
      getIt<NewsService>(),
    ),
  );
  getIt.registerFactory<NewsBloc>(
    () => NewsBloc(
      getIt<NewsRepository>(),
    ),
  );
}
