import 'package:fpdart/fpdart.dart';
import '../../data/models/account.dart';
import '../../shared/network/api_failure.dart';

abstract class PayoutRepository {
  Future<Either<Failure, List<Accounts>>> getSavedAccounts();
}
