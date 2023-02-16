import 'dart:convert';
import 'package:red_ops_task/infrastructure/core/network_api/i_http_network_api.dart';
import 'package:red_ops_task/infrastructure/restaurant/models/user_model.dart';
import 'package:injectable/injectable.dart';

import 'i_user_remote_data_source.dart';

@Environment("prod")
@LazySingleton(as: IUserRemoteDataSource)
class UserRemoteDataSource implements IUserRemoteDataSource {
  final IHttpNetworkApi httpNetworkApi;
  UserRemoteDataSource({required this.httpNetworkApi});

  @override
  Future<List<UserModel>> getUsers() async {
    final response = await httpNetworkApi.get('/users/');
    return UserModel.listFromResponse(jsonDecode(response.body));
  }
}
