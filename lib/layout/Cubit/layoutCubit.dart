import 'package:bloc/bloc.dart';
import 'package:e_shop_app/Screens/bagScreen/bagScreen.dart';
import 'package:e_shop_app/Screens/favoritesScreen/favoritesScreen.dart';
import 'package:e_shop_app/Screens/homeScreen/homeScreen.dart';
import 'package:e_shop_app/Screens/profileScreen/profileScreen.dart';
import 'package:e_shop_app/Screens/shopScreen/shopScreen.dart';
import 'package:e_shop_app/layout/Cubit/layoutStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LayoutCubit extends Cubit<LayoutStates>{
  LayoutCubit():super(LayoutInital());
  static LayoutCubit get(context)=> BlocProvider.of(context);
  int currentIndex=0;
  List<Widget>Screens=[
    HomeScreen(),
    ShopScreen(),
    BagScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];
  void changeBottomNav(index){
    currentIndex=index;
    emit(LayoutChangeBottomNav());
  }
}