abstract class BaseApiServices {
  Future<dynamic> getRequest(String url);

  Future<dynamic> getGetApiResponse(String url);

  //post api with one params
  Future<dynamic> getMyPostApiResponse(String url);

  //post api with url and data params
  Future<dynamic> getPostApiResponse(String url, dynamic data);

  Future<dynamic> getPutApiResponse(String url, dynamic data);
}
