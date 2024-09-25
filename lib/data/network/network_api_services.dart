import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:snap_shop/data/response/app_excaptions.dart';
import 'base_api_services.dart';

class NetworkApiService implements BaseApiServices {
  @override
  Future<dynamic> getRequest(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw NoInternetException('');
    } on TimeoutException {
      throw FetchDataException('Network Request time out');
    }

    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  //post api for only url
  @override
  Future<dynamic> getMyPostApiResponse(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response =
          await http.post(Uri.parse(url)).timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw NoInternetException('');
    } on TimeoutException {
      throw FetchDataException('Network Request time out');
    }

    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw NoInternetException('');
    } on TimeoutException {
      throw FetchDataException('Network Request time out');
    }
    return responseJson;
  }

  @override
  Future<dynamic> getPostApiResponse(String url, dynamic data) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }

    dynamic responseJson;
    try {
      Response response = await post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Network Request time out');
    }

    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  @override
  Future<dynamic> getPutApiResponse(String url, dynamic data) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }

    dynamic responseJson;
    try {
      Response response = await put(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Network Request time out');
    }

    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    if (kDebugMode) {
      print(response.statusCode);
    }

    dynamic responseJson;
    try {
      responseJson = jsonDecode(response.body);
    } catch (e) {
      // Handle JSON parsing error
      throw FetchDataException('Failed to parse response');
    }

    // Extract user-friendly error message
    String errorMessage = responseJson.containsKey('msg')
        ? responseJson['msg']
        : 'An unexpected error occurred';

    switch (response.statusCode) {
      case 200:
        return responseJson;
      case 400:
        throw BadRequestException(errorMessage);
      case 401:
        throw UnauthorisedException(errorMessage);
      default:
        throw FetchDataException(errorMessage);
    }
  }
}
