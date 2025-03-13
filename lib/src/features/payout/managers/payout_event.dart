part of 'payout_bloc.dart';

@freezed
class PayoutEvent with _$PayoutEvent {
  const factory PayoutEvent.load() = _Load;
  const factory PayoutEvent.search(String query) = _Search;
  const factory PayoutEvent.selectAccount(AccountEts account) = _SelectAccount;
  const factory PayoutEvent.selectBank(BankEts bank) = _SelectBank;
  const factory PayoutEvent.setAmount(String amount) = _SetAmount;
  const factory PayoutEvent.setNotificationType(
      NotificationType notificationType) = _SetNotificationType;
  const factory PayoutEvent.setPaymentMethod(PaymentMethod paymentMethod) =
      _SetPaymentMethod;
}
