import 'package:red_ops_task/domain/core/value_objects.dart';
import 'package:red_ops_task/domain/user/value_objects.dart';
import 'package:red_ops_task/infrastructure/restaurant/models/user_model.dart';
import 'package:injectable/injectable.dart';

import 'i_user_remote_data_source.dart';

@LazySingleton(
    as: IUserRemoteDataSource, env: [Environment.dev, Environment.test])
class UserRemoteDataSource implements IUserRemoteDataSource {
  UserRemoteDataSource();

  @override
  Future<List<UserModel>> getUsers() async {
    await Future.delayed(const Duration(seconds: 3));
    return [
      UserModel(
        id: UniqueId(),
        name: Name('McDonalds'),
        lastName: Name(null),
        activationDate: ActivationDate(null),
        email: 'someemail@mail.some',
        phoneNumber: PhoneNumber('123123123'),
        status: UserStatus(null),
      ),
    ];
  }
}
