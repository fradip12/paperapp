import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/ets_account.dart';
import '../../domain/entity/ets_bank.dart';
import '../../domain/repository/payout_repository.dart';
import '../../shared/network/api_failure.dart';
import '../datasource/remote_ds.dart';

@LazySingleton(as: PayoutRepository)
class PayoutRepositoryImpl implements PayoutRepository {
  final PayoutRemoteDatasources source;

  PayoutRepositoryImpl(this.source);
  @override
  Future<Either<Failure, List<AccountEts>>> getSavedAccounts() async {
    try {
      final response = await source.savedAccounts();
      return right(response.map(AccountEts.toDomain).toList());
    } on DioException catch (e) {
      return left(ApiFailure(e.message));
    } catch (e) {
      return left(ApiFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BankEts>>> getBanksList() async {
    try {
      final response = await source.banksList();
      return right(response.map(BankEts.toDomain).toList());
    } on DioException catch (e) {
      return left(ApiFailure(e.message));
    } catch (e) {
      return left(ApiFailure(e.toString()));
    }
  }
}
