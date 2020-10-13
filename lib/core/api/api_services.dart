import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:kommando/core/api/api.dart';

class ApiServices {
  Map<String, String> defaultHeaders = {
    HttpHeaders.contentTypeHeader: "application/json"
  };

  Future<http.Response> post({String uri, dynamic body}) async {
    final http.Response _response = await http.post("${Api.url}$uri",
        headers: defaultHeaders, body: jsonEncode(body));
    return _response;
  }

  Future<http.Response> get({String uri}) async {
    final http.Response _response = await http
        .get("${Api.url}$uri", headers: defaultHeaders)
        .catchError((onError) => print(onError));
    return _response;
  }

  Future<http.Response> delete({String uri, String id}) async {
    return await http.delete("${Api.url}$uri", headers: defaultHeaders);
  }
}