part of 'payout_bloc.dart';

@freezed
class PayoutState with _$PayoutState {
  const factory PayoutState.initial({
    @Default(ApiStatus.initial) ApiStatus state,
    @Default(NotificationType.whatsapp) NotificationType notificationType,
    AccountEts? selectedAccount,
    PaymentMethod? selectedMethod,
    List<AccountEts>? accounts,
    BankEts? selectedBank,
    String? errMessage,
    String? amount,
  }) = _Initial;
}
