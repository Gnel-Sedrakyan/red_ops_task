import 'package:red_ops_task/infrastructure/restaurant/models/user_model.dart';

abstract class IUserRemoteDataSource {
  Future<List<UserModel>> getUsers();
}
