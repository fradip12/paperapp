import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/account.dart';

part 'ets_account.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class AccountEts with _$AccountEts {
  const factory AccountEts({
    String? id,
    String? nama,
    String? email,
    String? phone,
  }) = _AccountEts;

  static AccountEts toDomain(Accounts account) {
    return AccountEts(
      id: account.id,
      nama: account.nama,
      email: account.email,
      phone: account.phone,
    );
  }
}
