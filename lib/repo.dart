import 'package:new_app/api/bbc_news/techs/tec.dart';
import 'package:new_app/api/bbc_news/techs/tec_api.dart';

class ApiReposatrey {
  final Techs _apiprovider = Techs();

  Future<List<TechApi>> fechdata() {
    return _apiprovider.getapi();
  }
}
