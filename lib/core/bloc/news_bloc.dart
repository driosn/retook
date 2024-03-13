import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retoflutter/core/locator/locator.dart';

class NewsBloc {
  NewsBloc(this.repo);

  final NewsRepository repo;
}

class NewsRepository {
  NewsRepository(this.service);

  final NewsService service;
}

class NewsService {
  NewsService(this.dio);

  final Dio dio;
}

class NewsScreen extends StatelessWidget {
  NewsScreen({super.key});

  // final newsBloc = NewsBloc(
  //   NewsRepository(
  //     NewsService(
  //       Dio(),
  //     ),
  //   ),
  // );

  final newsBloc = getIt<NewsBloc>();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class LocalNewsScreen extends StatelessWidget {
  LocalNewsScreen({super.key});
  final newsBloc = getIt<NewsBloc>();
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
