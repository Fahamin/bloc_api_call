
import 'package:bloc/bloc.dart';
import 'package:bloc_api_call/api/api_service.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../model/model.dart';


part 'cubit_user_state.dart';

class UserCubit extends Cubit<UserState> {
  List<Model> userList = [];

  UserCubit() : super(UserInitial());

  getAllUserList() async {
    try {
      emit(UserLoading());
      userList = await ApiService().getData();
      emit(UserDataLoded(userList));
    } catch (e) {
      emit(UserError(e.toString()));
    }
  }
}
