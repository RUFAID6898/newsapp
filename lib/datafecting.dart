import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:new_app/api/bbc_news/news_api.dart';
import 'package:new_app/api/bbc_news/newspiss.dart';
import 'package:new_app/api/bbc_news/techs/tec.dart';
import 'package:new_app/api/bbc_news/techs/tec_api.dart';

class TechNotifire extends ChangeNotifier {
  final _techsnews = Techs();
  List<TechApi> _tecss = [];
  List<TechApi> get tec => _tecss;
  Future<void> gettecnews() async {
    final response = await _techsnews.getapi();
    _tecss = response;
    notifyListeners();
  }
}

class Bbcnotifire extends ChangeNotifier {
  final _bbcnewses = ModelNewsApi();
  List<NewsBbcApi> _newsbbc = [];
  List<NewsBbcApi> get bbc => _newsbbc;
  Future<void> getbbcnewses() async {
    final response = await _bbcnewses.getnewses();
    _newsbbc = response;
    notifyListeners();
  }
}
