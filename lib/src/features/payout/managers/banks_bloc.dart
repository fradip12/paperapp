import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entity/ets_bank.dart';
import '../../../domain/repository/payout_repository.dart';

part 'banks_event.dart';
part 'banks_state.dart';
part 'banks_bloc.freezed.dart';

@injectable
class BanksBloc extends Bloc<BanksEvent, BanksState> {
  final PayoutRepository repository;

  BanksBloc(this.repository) : super(const _Initial()) {
    on<_Load>((event, emit) async {
      emit(const _Loading());
      final result = await repository.getBanksList();
      result.match(
        (err) => emit(_Error(err.message)),
        (data) => emit(_Success(data)),
      );
    });
  }
}
