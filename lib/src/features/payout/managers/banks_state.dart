part of 'banks_bloc.dart';

@freezed
class BanksState with _$BanksState {
  const factory BanksState.initial() = _Initial;
  const factory BanksState.loading() = _Loading;
  const factory BanksState.success(List<BankEts> banks) = _Success;
  const factory BanksState.error(String message) = _Error;
}
