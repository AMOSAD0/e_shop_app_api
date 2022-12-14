import 'package:e_shop_app/Network/Local/cachHelper.dart';
import 'package:e_shop_app/Screens/loginScreen/loginScreen.dart';
import 'package:e_shop_app/Screens/loginScreen/login_cubit/login_cubit.dart';
import 'package:e_shop_app/constans.dart';
import 'package:e_shop_app/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CubitApp/BlocObserver.dart';
import 'Network/Remote/dio_helper.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper.inti();
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(E_shopApp());
}

class E_shopApp extends StatelessWidget {
  const E_shopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit(),)
      ],
      child: MaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(
              bodyLarge: TextStyle(
            fontSize: 34.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
              bodyMedium: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              bodySmall: TextStyle(
                fontSize: 11.0,
              ),
            displaySmall: TextStyle(
              fontSize: 11.0,
              color: Colors.grey,
            ),
          ),
          scaffoldBackgroundColor: Colors.white,
          primaryColor: primaryColor,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
          ),
      ),
        home: LayoutApp(),
      ),
    );
  }
}
