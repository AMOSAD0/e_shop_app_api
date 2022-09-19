import 'package:e_shop_app/Screens/loginScreen/login_model.dart';

abstract class LoginStates{}
class LoginInitailState extends LoginStates{}
class LoginLodingState extends LoginStates{}
class LoginSucsseState extends LoginStates{
   late final LoginModel loginModel;
   LoginSucsseState(this.loginModel);
}
class LoginFailState extends LoginStates{}