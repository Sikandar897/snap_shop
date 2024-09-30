import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppUrl {
  static var baseUrl = dotenv.env['App_BaseUrl'];

  static var signUpApiEndPoint = '$baseUrl/auth/signup'; //Signup API
}
