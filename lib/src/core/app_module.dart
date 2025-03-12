import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../shared/network/api_client.dart';

@module
abstract class PurpleCheckAppDiModule {
  @lazySingleton
  @Named('apiClient')
  Dio get dio => ApiClient.instance;

  @preResolve
  @lazySingleton
  @Named('baseUrl')
  Future<String> get baseUrl => Future<String>.value(
      'https://67d17d02825945773eb4845d.mockapi.io/api/v1/');
}
