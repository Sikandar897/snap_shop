import '../../data/network/base_api_services.dart';
import '../../data/network/network_api_services.dart';
import '../../resources/app_url.dart';

class AuthRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  //Hitting signup api
  Future<dynamic> signupApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.signUpApiEndPoint, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
