import 'package:bloc/bloc.dart';
import 'package:e_shop_app/Network/Remote/dio_helper.dart';
import 'package:e_shop_app/Network/end_point.dart';
import 'package:e_shop_app/Screens/loginScreen/login_cubit/login_state.dart';
import 'package:e_shop_app/Screens/loginScreen/login_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates>{
  LoginCubit():super(LoginInitailState());
  static LoginCubit get(context)=> BlocProvider.of(context);

  LoginModel ?loginModel;

  void UserLogin({
    @required String ?email,
    @required String ? password,
    
}){
    emit(LoginLodingState());
    DioHelper.PostData(url: LOGIN, data:{
      'email':email,
      'password':password
    }).then((value) {
      loginModel=LoginModel.fromJson(value.data);
      emit(LoginSucsseState(loginModel!));
    }).catchError((onError){
      print(onError.toString());
      emit(LoginFailState());
    });
  }

}