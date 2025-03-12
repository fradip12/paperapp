import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../datasource/remote_ds.dart';
import '../models/account.dart';
import '../../domain/repository/payout_repository.dart';
import '../../shared/network/api_failure.dart';

@LazySingleton(as: PayoutRepository)
class PayoutRepositoryImpl implements PayoutRepository {
  final PayoutRemoteDatasources source;

  PayoutRepositoryImpl(this.source);
  @override
  Future<Either<Failure, List<Accounts>>> getSavedAccounts() async {
    try {
      final response = await source.savedAccounts();
      return right(response);
    } on DioException catch (e) {
      return left(ApiFailure(e.message));
    } catch (e) {
      return left(ApiFailure(e.toString()));
    }
  }
}
