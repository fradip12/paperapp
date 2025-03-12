part of 'payout_bloc.dart';

@freezed
class PayoutState with _$PayoutState {
  const factory PayoutState.initial({
    @Default(ApiStatus.initial) ApiStatus state,
    List<Accounts>? accounts,
    Accounts? selectedAccount,
    String? errMessage,
  }) = _Initial;
}
