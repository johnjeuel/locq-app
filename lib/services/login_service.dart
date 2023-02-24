import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginService {
  static const String _baseUrl = 'https://staging.api.locq.com/ms-profile/user/login';

  Future<String> loginUser(String mobileNumber, String password) async {
    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'mobileNumber': mobileNumber,
        'password': password,
        'profileType': 'plc'
      }),
    );

    print("login resopnse: ${response}");

    if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);
      return responseJson['token'];
    } else {
      throw Exception('Failed to login user');
    }
  }
}
