import 'package:red_ops_task/domain/core/value_objects.dart';
import 'package:red_ops_task/infrastructure/user/models/user_model.dart';

abstract class IUserRemoteDataSource {
  Future<List<UserModel>> getUsers({required int page});
  Future<List<UserModel>> getFilteredUsers({required String filterText});

  Future<UserModel> getUserById({required UniqueId id});
}
