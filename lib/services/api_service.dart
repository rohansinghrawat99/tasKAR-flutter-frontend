import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:tasker/services/preference_service.dart';

// ignore: non_constant_identifier_names
String BASE_URL = "https://ar-taskers-backend.herokuapp.com";

abstract class APIService {
  Future<Map<String, dynamic>> get(String url,
      // ignore: avoid_init_to_null
          {Map<String, dynamic> params = null,
        bool useAuthHeaders = true}) async {
    try {
      var data = await http.get(_getUrlWithParams(url, params: params),
          headers: await _getHeaders(useAuthHeaders: useAuthHeaders));
      return _getResponse(data);
    } catch (e) {
      throw e;
    }
  }

  Future<Map<String, dynamic>> post(String url,
      {@required Map<String, dynamic> body,
        bool useAuthHeaders = true,
        type = RequestType.JSON,
        Map<String, dynamic> params}) async {
    try {
      final response = await http.post(_getUrlWithParams(url, params: params),
          headers:
          await _getHeaders(useAuthHeaders: useAuthHeaders, type: type),
          body: type == RequestType.FORM ? body : json.encode(body));
      return _getResponse(response);
    } catch (e) {
      throw e;
    }
  }

  Future<Map<String, dynamic>> patch(String url,
      {@required Map<String, dynamic> body,
        bool useAuthHeaders = true,
        type = RequestType.JSON,
        Map<String, dynamic> params}) async {
    try {
      final response = await http.patch(_getUrlWithParams(url, params: params),
          headers:
          await _getHeaders(useAuthHeaders: useAuthHeaders, type: type),
          body: type == RequestType.FORM ? body : json.encode(body));
      return _getResponse(response);
    } catch (e) {
      throw e;
    }
  }

  Future<Map<String, dynamic>> put(String url,
      {@required Map<String, dynamic> body,
        bool useAuthHeaders = true,
        Map<String, dynamic> params,
        type = RequestType.JSON}) async {
    try {
      final response = await http.put(_getUrlWithParams(url, params: params),
          headers:
          await _getHeaders(useAuthHeaders: useAuthHeaders, type: type),
          body: type == RequestType.FORM ? body : json.encode(body));

      return _getResponse(response);
    } catch (e) {
      throw e;
    }
  }

  Future<Map<String, dynamic>> delete(String url,
      {bool useAuthHeaders = true, Map<String, dynamic> params}) async {
    try {
      final response = await http.delete(_getUrlWithParams(url, params: params),
          headers: await _getHeaders(useAuthHeaders: useAuthHeaders));

      return _getResponse(response);
    } catch (e) {
      throw e;
    }
  }

  // Helper Methods for API Services
  String _getUrl(String url) {
    return BASE_URL + url;
  }

  Future<Map<String, String>> _getHeaders(
      {bool useAuthHeaders = true, type = RequestType.JSON}) async {
    Map<String, String> map = Map<String, String>();

    if (type == RequestType.JSON) {
      map['content-Type'] = 'application/json';
    } else {
      map['content-Type'] = 'application/x-www-form-urlencoded';
    }

    if (useAuthHeaders) {
      map['Authorization'] = 'bearer ${await PreferenceService.getInstance().getAuthToken()}';
    }

    return map;
  }

  String _getUrlWithParams(String url, {Map<String, dynamic> params}) {
    var absUrl = _getUrl(url);

    if (params != null) {
      var paramsString = '';
      params.forEach((key, value) {
        paramsString += '&$key=$value';
      });

      return absUrl + '?' + paramsString.substring(1);
    }

    return absUrl;
  }

  Map<String, dynamic> _getResponse(http.Response response) {
    print("api service");
    print(response.statusCode.toString());
    print(response.body.toString());
    print(response.request.url.toString());

    if (response.statusCode == 204 || response.body.isEmpty) return null;

    final Map<String, dynamic> body = json.decode(response.body);
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return body;
    } else {
      throw "Error";
    }
  }
}

enum RequestType { JSON, FORM }