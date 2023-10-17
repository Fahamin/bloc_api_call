part of 'cubit_user_cubit.dart';

@immutable
abstract class UserState extends Equatable {
  const UserState();
}

class UserInitial extends UserState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserLoading extends UserState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserDataLoded extends UserState {
  List<Model> userList;

  UserDataLoded( this.userList);

  @override
  // TODO: implement props
  List<Object?> get props => [userList];
}

class UserError extends UserState {
  String message;

  UserError( this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
