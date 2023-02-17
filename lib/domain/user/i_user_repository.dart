import 'package:dartz/dartz.dart';
import 'package:red_ops_task/domain/core/value_objects.dart';
import 'package:red_ops_task/domain/user/user.dart';

import 'user_failure.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, List<User>>> getUsers({required int page});
  Future<Either<UserFailure, User>> getUserById({required UniqueId id});
  Future<Either<UserFailure, List<User>>> getFilteredUsers(
      {required String filterText});
}
