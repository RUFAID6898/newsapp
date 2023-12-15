part of 'tecnews_bloc.dart';

@immutable
sealed class TecnewsEvent {
  const TecnewsEvent();
  @override
  List<Object> get porops => [];
}

class GetUserList extends TecnewsEvent {}
