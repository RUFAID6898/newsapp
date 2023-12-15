import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:new_app/api/bbc_news/techs/tec.dart';
import 'package:new_app/api/bbc_news/techs/tec_api.dart';
import 'package:new_app/repo.dart';

part 'tecnews_event.dart';
part 'tecnews_state.dart';

class TecnewsBloc extends Bloc<TecnewsEvent, TecnewsState> {
  TecnewsBloc() : super(TecnewsInitial()) {
    final ApiReposatrey apiReposatrey = ApiReposatrey();
    on((event, emit) async {
      try {
        emit(UserLooding());
        final List<TechApi> userlist = await apiReposatrey.fechdata();
        emit(UserLooded(uselist: userlist));
      } catch (e) {
        emit(UserError(error: 'fsikd'));
      }
    });
  }
}
