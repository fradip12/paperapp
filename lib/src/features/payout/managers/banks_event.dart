part of 'banks_bloc.dart';

@freezed
class BanksEvent with _$BanksEvent {
  const factory BanksEvent.load() = _Load;
}
