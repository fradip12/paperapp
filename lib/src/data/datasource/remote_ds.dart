import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../models/account.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_ds.g.dart';

@lazySingleton
@RestApi()
abstract class PayoutRemoteDatasources {
  @factoryMethod
  factory PayoutRemoteDatasources(
    @Named('apiClient') Dio dio, {
    @Named('baseUrl') String baseUrl,
  }) = _PayoutRemoteDatasources;

  @GET('savedAccounts')
  Future<List<Accounts>> savedAccounts();
}
