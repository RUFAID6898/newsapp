part of 'tecnews_bloc.dart';

class TecnewsState {
  const TecnewsState();
  @override
  List<Object> get porops => [];
}

class TecnewsInitial extends TecnewsState {}

class UserLooding extends TecnewsState {}

class UserLooded extends TecnewsState {
  final List<TechApi> uselist;
  const UserLooded({required this.uselist});
}

class UserError extends TecnewsState {
  final String? error;

  UserError({required this.error});
}
