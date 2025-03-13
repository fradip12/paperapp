import 'package:fpdart/fpdart.dart';

import '../../shared/network/api_failure.dart';
import '../entity/ets_account.dart';
import '../entity/ets_bank.dart';

abstract class PayoutRepository {
  Future<Either<Failure, List<AccountEts>>> getSavedAccounts();
  Future<Either<Failure, List<BankEts>>> getBanksList();
}
