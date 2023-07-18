import 'package:amazon_clone/constants/global_variable.dart';
import 'package:amazon_clone/models/user.dart';
import 'package:http/http.dart' as http;
import '../../../constants/global_variable.dart';

class AuthService {
  void signUpUser({
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      User user = User(
          sId: '',
          name: name,
          email: email,
          password: password,
          address: '',
          type: '',
          token: '');

      http.Response res = await http.post(Uri.parse('$uri/api/signup'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json;charset = UTF-8'
          });
      print(res.statusCode);
    } catch (e) {}
  }
}
