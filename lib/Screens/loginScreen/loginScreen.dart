
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_shop_app/Screens/loginScreen/login_cubit/login_cubit.dart';
import 'package:e_shop_app/Screens/loginScreen/login_cubit/login_state.dart';
import 'package:e_shop_app/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
class LoginScreen extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var Formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context, state) {
          if(state is LoginSucsseState){
            if(state.loginModel.status!){
              Fluttertoast.showToast(
                  msg: state.loginModel.message!,
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            }
            else{
              Fluttertoast.showToast(
                  msg: state.loginModel.message!,
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            }
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child:Form(
                  key: Formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Login',
                        style: TextStyle(
                          fontSize: 34.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 73.0,
                      ),
                      BuildTextField(
                        label: 'Email',
                        controller: emailController,
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Error please check your Email again';
                          }else{ return null;}
                        },
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      BuildTextField(
                        label: 'Password',
                        controller: passwordController,
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Error please check your Password again';
                          }else{ return null;}
                        },
                      ),
                      SizedBox(
                        height:16,
                      ),
                      TextButton(onPressed: (){},
                          child: Text('Forgot your password?')),
                      SizedBox(
                        height:32,
                      ),
                      ConditionalBuilder(
                        condition:state is !LoginLodingState ,
                        builder: (BuildContext context) { return BuildButton(label: 'LOGIN',
                            function: () {
                              if(Formkey.currentState!.validate()){
                                LoginCubit.get(context).UserLogin(
                                    email: emailController.text, password: passwordController.text);
                              }
                            });},
                        fallback: (BuildContext context) { return Center(child: CircularProgressIndicator()); },
                      ),
                      SizedBox(
                        height: 194.0,
                      ),
                      Center(
                        child: Text('Or login with social account'),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BuildIconButton(img: 'lib/images/Google.png'),
                          SizedBox(
                            width: 16.0,
                          ),
                          BuildIconButton(img: 'lib/images/Facebook.png')
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
