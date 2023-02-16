import 'package:red_ops_task/domain/user/i_user_repository.dart';
import 'package:red_ops_task/domain/user/user.dart';
import 'package:red_ops_task/domain/user/user_failure.dart';
import 'package:red_ops_task/infrastructure/restaurant/data_sources/i_user_remote_data_source.dart';

import 'package:red_ops_task/infrastructure/restaurant/models/user_model.dart';
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
  Future<Either<UserFailure, List<User>>> getUsers() async {
    try {
      final List<UserModel> usersFromRemoteDatasource =
          await userRemoteDataSource.getUsers();
      return right(usersFromRemoteDatasource);
    } on PlatformException catch (_) {
      return left(const UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, List<User>>> filterUser({required String text}) {
    // TODO: implement filterUser
    throw UnimplementedError();
  }
}
