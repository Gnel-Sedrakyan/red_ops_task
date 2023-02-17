import 'package:dartz/dartz.dart';
import 'package:red_ops_task/domain/core/value_objects.dart';
import 'package:red_ops_task/domain/user/value_objects.dart';
import 'package:red_ops_task/infrastructure/user/models/user_model.dart';
import 'package:injectable/injectable.dart';

import 'i_user_remote_data_source.dart';

@LazySingleton(
    as: IUserRemoteDataSource, env: [Environment.dev, Environment.test])
class UserRemoteDataSource implements IUserRemoteDataSource {
  UserRemoteDataSource();

  @override
  Future<List<UserModel>> getUsers({required int page}) async {
    await Future.delayed(const Duration(seconds: 3));
    return [
      UserModel(
        id: UniqueId(),
        name: some(Name('testName')),
        lastName: none(),
        activationDate: none(),
        email: 'someemail@mail.some',
        phoneNumber: some(PhoneNumber('123123123')),
        status: none(),
        image: some(UserImage(
            "https://api.offerfirst.com/uploads/image/4fee374ec1dad1729f13bc5474c2af2e.jpg")),
        city: none(),
        state: none(),
      ),
    ];
  }

  @override
  Future<List<UserModel>> getFilteredUsers({required String filterText}) async {
    return [
      UserModel(
        id: UniqueId(),
        name: some(Name('testName')),
        lastName: none(),
        activationDate: none(),
        email: 'someemail@mail.some',
        phoneNumber: some(PhoneNumber('123123123')),
        status: none(),
        image: some(UserImage(
            "https://api.offerfirst.com/uploads/image/4fee374ec1dad1729f13bc5474c2af2e.jpg")),
        city: none(),
        state: none(),
      ),
    ];
  }

  @override
  Future<UserModel> getUserById({required UniqueId id}) async {
    return UserModel(
      id: UniqueId(),
      name: some(Name('testName')),
      lastName: none(),
      activationDate: none(),
      email: 'someemail@mail.some',
      phoneNumber: some(PhoneNumber('123123123')),
      status: none(),
      image: some(UserImage(
          "https://api.offerfirst.com/uploads/image/4fee374ec1dad1729f13bc5474c2af2e.jpg")),
      city: none(),
      state: none(),
    );
  }
}
