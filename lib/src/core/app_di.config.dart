// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/datasource/remote_ds.dart' as _i404;
import '../data/repository/payout_repository_impl.dart' as _i984;
import '../domain/repository/payout_repository.dart' as _i589;
import '../features/payout/managers/payout_bloc.dart' as _i459;
import 'app_module.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final purpleCheckAppDiModule = _$PurpleCheckAppDiModule();
    gh.lazySingleton<_i361.Dio>(
      () => purpleCheckAppDiModule.dio,
      instanceName: 'apiClient',
    );
    await gh.lazySingletonAsync<String>(
      () => purpleCheckAppDiModule.baseUrl,
      instanceName: 'baseUrl',
      preResolve: true,
    );
    gh.lazySingleton<_i404.PayoutRemoteDatasources>(
        () => _i404.PayoutRemoteDatasources(
              gh<_i361.Dio>(instanceName: 'apiClient'),
              baseUrl: gh<String>(instanceName: 'baseUrl'),
            ));
    gh.lazySingleton<_i589.PayoutRepository>(
        () => _i984.PayoutRepositoryImpl(gh<_i404.PayoutRemoteDatasources>()));
    gh.factory<_i459.PayoutBloc>(
        () => _i459.PayoutBloc(gh<_i589.PayoutRepository>()));
    return this;
  }
}

class _$PurpleCheckAppDiModule extends _i460.PurpleCheckAppDiModule {}
