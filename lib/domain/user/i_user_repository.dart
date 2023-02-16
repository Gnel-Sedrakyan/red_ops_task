import 'package:dartz/dartz.dart';
import 'package:red_ops_task/domain/user/user.dart';

import 'user_failure.dart';

abstract class IRestaurantRepository {
  Future<Either<UserFailure, List<User>>> getUsers();
  Future<Either<UserFailure, List<User>>> filterUser({required String text});
}
