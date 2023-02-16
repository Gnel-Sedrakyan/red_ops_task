import 'package:http/http.dart' as http;

abstract class IHttpNetworkApi {
  Future<http.Response> get(String url);
}
