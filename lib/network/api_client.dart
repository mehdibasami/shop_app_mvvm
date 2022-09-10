import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:testarchitecture/values/constants.dart';

class ApiClient {
  Uri url = Uri();
  ApiClient.params(String basePath, Map<String, String> map) {
    url = Uri.https(Constants.baseUrl, basePath, map);
  }

  ApiClient(String basePath) {
    url = Uri.https(Constants.baseUrl, basePath);
    // log('ApiClient: $url');
  }

  Future<dynamic> post(Uri url, {Map<String, dynamic>? body}) async {
    var lHeaders = {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.authorizationHeader: "bearer ***"
    };

    final jsonBody = jsonEncode(body);
    final response = await http.post(url, headers: lHeaders, body: jsonBody);
    // return HttpResponseHandler.handel(response);
    return response;
  }

  Future<dynamic> get(Uri url) async {
    var lHeaders = {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.authorizationHeader: "bearer ***"
    };
    final response = await http.get(url, headers: lHeaders);
    return response;
  }
}
