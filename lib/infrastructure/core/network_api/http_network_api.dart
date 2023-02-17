import 'package:red_ops_task/infrastructure/core/network_api/i_http_network_api.dart';

import 'package:injectable/injectable.dart';

import 'package:http/http.dart' as http;

@LazySingleton(as: IHttpNetworkApi)
class HttpNetworkApi implements IHttpNetworkApi {
  final baseURL = "https://api.offerfirst.com/api/admin";

  final http.Client _clinet = http.Client();

  @override
  Future<http.Response> get(String uri, {Map<String, dynamic>? query}) {
    final url = Uri.parse("$baseURL$uri").replace(queryParameters: query);

    return _clinet.get(url);
  }
}
