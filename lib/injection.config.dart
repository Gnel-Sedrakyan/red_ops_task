// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'application/user/user_category/account_category_bloc.dart' as _i3;
import 'application/user/user_detail/user_detail_bloc.dart' as _i12;
import 'application/user/user_list/user_list_bloc.dart' as _i13;
import 'domain/user/i_user_repository.dart' as _i10;
import 'infrastructure/core/network_api/http_network_api.dart' as _i6;
import 'infrastructure/core/network_api/i_http_network_api.dart' as _i5;
import 'infrastructure/core/network_injectable_module.dart' as _i14;
import 'infrastructure/user/data_sources/i_user_remote_data_source.dart' as _i7;
import 'infrastructure/user/data_sources/remote_data_source.dart' as _i8;
import 'infrastructure/user/data_sources/test_data_source.dart' as _i9;
import 'infrastructure/user/repositories/user_repository.dart' as _i11;

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
  gh.factory<_i3.AccountCategoryState>(
      () => _i3.AccountCategoryState.initial());
  gh.lazySingleton<_i4.Client>(() => firebaseInjectableModule.httpClient);
  gh.lazySingleton<_i5.IHttpNetworkApi>(() => _i6.HttpNetworkApi());
  gh.lazySingleton<_i7.IUserRemoteDataSource>(
    () => _i8.UserRemoteDataSource(httpNetworkApi: get<_i5.IHttpNetworkApi>()),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i7.IUserRemoteDataSource>(
    () => _i9.UserRemoteDataSource(),
    registerFor: {
      _dev,
      _test,
    },
  );
  gh.lazySingleton<_i10.IUserRepository>(() => _i11.UserRepository(
      userRemoteDataSource: get<_i7.IUserRemoteDataSource>()));
  gh.factory<_i12.UserDetailState>(() => const _i12.UserDetailState.loading());
  gh.factory<_i13.UserListState>(() => _i13.UserListState.initial());
  gh.factory<_i3.AccountCategoryBloc>(
      () => _i3.AccountCategoryBloc(get<_i3.AccountCategoryState>()));
  gh.factory<_i12.UserDetailBloc>(() => _i12.UserDetailBloc(
        get<_i12.UserDetailState>(),
        get<_i10.IUserRepository>(),
      ));
  gh.factory<_i13.UserListBloc>(() => _i13.UserListBloc(
        get<_i13.UserListState>(),
        get<_i10.IUserRepository>(),
      ));
  return get;
}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}
