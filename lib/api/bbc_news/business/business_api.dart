import 'dart:convert';

import 'package:new_app/api/bbc_news/business/business.dart';
import 'package:new_app/api/bbc_news/techs/tec_api.dart';
import 'package:http/http.dart' as http;

class BusinessGetApi {
  static const _tecnolagyUrl =
      "https://newsapi.org/v2/everything?q=bitcoin&apiKey=243616a5704c48dcb5e7cf781c08d66f";
  Future<List<BusinessApi>> getapi() async {
    final response = await http.get(Uri.parse(_tecnolagyUrl));
    if (response.statusCode == 200) {
      final decode = json.decode(response.body)["articles"] as List;
      print(decode.toString());
      return decode.map((e) => BusinessApi.fromJson(e)).toList();
    } else {
      throw Exception("somthing happend");
    }
  }
}
