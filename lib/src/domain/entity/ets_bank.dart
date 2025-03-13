import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/bank.dart';

part 'ets_bank.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class BankEts with _$BankEts {
  const factory BankEts({
    String? id,
    String? nama,
    String? kode,
    String? accountNumber,
    String? accountName,
  }) = _BankEts;

  static BankEts toDomain(Bank bank) {
    return BankEts(
      id: bank.id,
      nama: bank.nama,
      kode: bank.kode,
    );
  }
}
