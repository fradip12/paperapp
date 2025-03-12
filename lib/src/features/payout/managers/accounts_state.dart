part of 'accounts_bloc.dart';

@freezed
class AccountsState with _$AccountsState {
  const factory AccountsState.initial({
    @Default(ApiStatus.initial) ApiStatus state,
    List<Accounts>? accounts,
    String? errMessage,
  }) = _Initial;
}
