part of 'accounts_bloc.dart';

@freezed
class AccountsEvent with _$AccountsEvent {
  const factory AccountsEvent.load() = _Load;
  const factory AccountsEvent.search(String query) = _Search;
}
