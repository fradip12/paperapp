import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/enums/notification_type.dart';
import '../../../domain/entity/ets_account.dart';
import '../../../domain/entity/ets_bank.dart';
import '../../../domain/repository/payout_repository.dart';
import '../../../shared/models/enum_pay_method.dart';
import '../../../shared/network/api_status.dart';

part 'payout_bloc.freezed.dart';
part 'payout_event.dart';
part 'payout_state.dart';

@injectable
class PayoutBloc extends Bloc<PayoutEvent, PayoutState> {
  final PayoutRepository repository;

  PayoutBloc(this.repository)
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
      List<AccountEts> tempAccounts = List.from(state.accounts ?? []);

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

    on<_SelectAccount>((event, emit) {
      emit(state.copyWith(selectedAccount: event.account));
    });

    on<_SetAmount>((event, emit) {
      emit(state.copyWith(amount: event.amount));
    });

    on<_SetNotificationType>((event, emit) {
      emit(state.copyWith(notificationType: event.notificationType));
    });

    on<_SelectBank>((event, emit) {
      emit(state.copyWith(selectedBank: event.bank));
    });

    on<_SetPaymentMethod>((event, emit) {
      emit(state.copyWith(selectedMethod: event.paymentMethod));
    });
  }
}
