import 'package:red_ops_task/domain/core/value_objects.dart';
import 'package:red_ops_task/domain/user/i_user_repository.dart';
import 'package:red_ops_task/domain/user/user.dart';
import 'package:red_ops_task/domain/user/user_failure.dart';
import 'package:red_ops_task/infrastructure/user/data_sources/i_user_remote_data_source.dart';

import 'package:red_ops_task/infrastructure/user/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final IUserRemoteDataSource userRemoteDataSource;

  UserRepository({
    required this.userRemoteDataSource,
  });

  @override
  Future<Either<UserFailure, List<User>>> getUsers({required int page}) async {
    try {
      final List<UserModel> usersFromRemoteDatasource =
          await userRemoteDataSource.getUsers(page: page);
      return right(usersFromRemoteDatasource);
    } on PlatformException catch (_) {
      return left(const UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, List<User>>> getFilteredUsers(
      {required String filterText}) async {
    try {
      final List<UserModel> usersFromRemoteDatasource =
          await userRemoteDataSource.getFilteredUsers(filterText: filterText);
      return right(usersFromRemoteDatasource);
    } on PlatformException catch (_) {
      return left(const UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, User>> getUserById({required UniqueId id}) async {
    try {
      final UserModel userFromRemoteDatasource =
          await userRemoteDataSource.getUserById(id: id);
      return right(userFromRemoteDatasource);
    } on PlatformException catch (_) {
      return left(const UserFailure.serverError());
    }
  }
}
