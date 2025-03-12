import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Accounts with _$Accounts {
  const factory Accounts({
    String? id,
    String? nama,
    String? phone,
    String? email,
  }) = _Accounts;

  factory Accounts.fromJson(Map<String, dynamic> json) =>
      _$AccountsFromJson(json);
}
