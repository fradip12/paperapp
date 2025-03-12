import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/account.dart';
import '../../../domain/repository/payout_repository.dart';
import '../../../shared/network/api_status.dart';

part 'accounts_state.dart';
part 'accounts_event.dart';
part 'accounts_bloc.freezed.dart';

@injectable
class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  final PayoutRepository repository;

  AccountsBloc(this.repository)
      : super(const _Initial(state: ApiStatus.initial)) {
    on<_Load>((event, emit) async {
      emit(state.copyWith(state: ApiStatus.loading));
      final result = await repository.getSavedAccounts();
      result.match(
        (err) =>
            emit(_Initial(state: ApiStatus.error, errMessage: err.message)),
        (data) {
          emit(_Initial(state: ApiStatus.success, accounts: data));
        },
      );
    });

    on<_Search>((event, emit) async {
      List<Accounts> tempAccounts = List.from(state.accounts ?? []);

      if (state.state == ApiStatus.success) {
        final query = event.query.toLowerCase();
        final filteredAccounts = tempAccounts.where((account) {
          return account.nama!.toLowerCase().contains(query);
        }).toList();

        emit(state.copyWith(
          state: ApiStatus.success,
          accounts: filteredAccounts,
        ));
      }
    });
  }
}
