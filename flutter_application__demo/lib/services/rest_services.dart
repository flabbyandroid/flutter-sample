import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class RestService {
  static final RestService _instance = RestService._constructor();
  factory RestService() {
    return _instance;
  }

  RestService._constructor();
  static const String baseUrl = 'https://dev.greenbatt.com.my/api/v2';

  Future get(String endpoint) async {
    final response = await http.get(
      '$baseUrl/$endpoint',
    );
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      print(response.body);
      return jsonDecode(response.body);
    }
    throw response;
  }
}
