// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'application/user/user_list/user_list_bloc.dart' as _i11;
import 'domain/user/i_user_repository.dart' as _i9;
import 'infrastructure/core/network_api/http_network_api.dart' as _i5;
import 'infrastructure/core/network_api/i_http_network_api.dart' as _i4;
import 'infrastructure/core/network_injectable_module.dart' as _i12;
import 'infrastructure/restaurant/data_sources/i_user_remote_data_source.dart'
    as _i6;
import 'infrastructure/restaurant/data_sources/remote_data_source.dart' as _i7;
import 'infrastructure/restaurant/data_sources/test_data_source.dart' as _i8;
import 'infrastructure/restaurant/repositories/user_repository.dart' as _i10;

const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.Client>(() => firebaseInjectableModule.httpClient);
  gh.lazySingleton<_i4.IHttpNetworkApi>(() => _i5.HttpNetworkApi());
  gh.lazySingleton<_i6.IUserRemoteDataSource>(
    () => _i7.UserRemoteDataSource(httpNetworkApi: get<_i4.IHttpNetworkApi>()),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i6.IUserRemoteDataSource>(
    () => _i8.UserRemoteDataSource(),
    registerFor: {
      _dev,
      _test,
    },
  );
  gh.lazySingleton<_i9.IUserRepository>(
      () => _i10.UserRepository(userRemoteDataSource: get<dynamic>()));
  gh.factory<_i11.UserListState>(() => _i11.UserListState.loading());
  gh.factory<_i11.ProductListBloc>(() => _i11.ProductListBloc(
        get<_i11.UserListState>(),
        get<_i9.IUserRepository>(),
      ));
  return get;
}

class _$FirebaseInjectableModule extends _i12.FirebaseInjectableModule {}
