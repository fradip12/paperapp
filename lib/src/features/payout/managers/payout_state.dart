part of 'payout_bloc.dart';

@freezed
class PayoutState with _$PayoutState {
  const factory PayoutState.initial({
    @Default(ApiStatus.initial) ApiStatus state,
    List<AccountEts>? accounts,
    AccountEts? selectedAccount,
    BankEts? selectedBank,
    PaymentMethod? selectedMethod,
    @Default(NotificationType.whatsapp) NotificationType notificationType,
    String? errMessage,
    String? amount,
  }) = _Initial;
}
