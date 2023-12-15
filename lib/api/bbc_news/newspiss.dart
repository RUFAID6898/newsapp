import 'dart:convert';

import 'package:new_app/api/bbc_news/news_api.dart';
import 'package:http/http.dart' as http;

class ModelNewsApi {
  static const _siteural =
      "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=243616a5704c48dcb5e7cf781c08d66f";

  Future<List<NewsBbcApi>> getnewses() async {
    final respons = await http.get(Uri.parse(_siteural));
    if (respons.statusCode == 200) {
      final decode = json.decode(respons.body)["articles"] as List;
      // print(decode.toString());
      return decode.map((e) => NewsBbcApi.fromJson(e)).toList();
    } else {
      throw Exception('Somthing happent');
    }
  }
}
