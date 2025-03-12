part of 'payout_bloc.dart';

@freezed
class PayoutEvent with _$PayoutEvent {
  const factory PayoutEvent.load() = _Load;
  const factory PayoutEvent.search(String query) = _Search;
  const factory PayoutEvent.selectAccount(Accounts account) = _SelectAccount;
  const factory PayoutEvent.setAmount(String amount) = _SetAmount;
  const factory PayoutEvent.setNotificationType(
      NotificationType notificationType) = _SetNotificationType;
}
