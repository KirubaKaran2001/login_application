import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:login_application/api_model/api_model.dart';
import 'package:http/http.dart' as http;

Future loginUser(LoginRequestModel loginRequestModel) async {
  Uri url = Uri.parse('https://reqres.in/api/login');
  final response = await http.post(
    url,
    body: loginRequestModel.toJson(),
  );
  debugPrint(response.body);
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  }
}
