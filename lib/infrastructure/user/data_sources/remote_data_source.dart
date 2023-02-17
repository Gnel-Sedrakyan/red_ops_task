import 'dart:convert';
import 'package:red_ops_task/domain/core/value_objects.dart';
import 'package:red_ops_task/infrastructure/core/network_api/i_http_network_api.dart';
import 'package:red_ops_task/infrastructure/user/models/user_model.dart';
import 'package:injectable/injectable.dart';

import 'i_user_remote_data_source.dart';

@Environment("prod")
@LazySingleton(as: IUserRemoteDataSource)
class UserRemoteDataSource implements IUserRemoteDataSource {
  final IHttpNetworkApi httpNetworkApi;
  UserRemoteDataSource({required this.httpNetworkApi});

  @override
  Future<List<UserModel>> getUsers({required int page}) async {
    Map<String, dynamic> query = {
      "count": "10",
      "from": ((page - 1) * 10).toString(),
    };
    final response = await httpNetworkApi.get('/users/', query: query);
    return UserModel.listFromResponse(jsonDecode(response.body));
  }

  @override
  Future<List<UserModel>> getFilteredUsers({required String filterText}) async {
    Map<String, dynamic> query = {
      "count": "1000",
      "from": "0",
    };
    final response = await httpNetworkApi.get('/users/', query: query);
    return UserModel.listFromResponse(jsonDecode(response.body))
        .where((user) => user.checkIsMatchingFilter(filterText))
        .toList();
  }

  @override
  Future<UserModel> getUserById({required UniqueId id}) async {
    Map<String, dynamic> query = {
      "count": "1000",
      "from": "0",
    };
    final response = await httpNetworkApi.get('/users/', query: query);
    return UserModel.listFromResponse(jsonDecode(response.body))
        .firstWhere((user) => user.id == id);
  }
}
