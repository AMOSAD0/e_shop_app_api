import 'package:e_shop_app/constans.dart';
import 'package:e_shop_app/layout/Cubit/layoutCubit.dart';
import 'package:e_shop_app/layout/Cubit/layoutStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutApp extends StatelessWidget {
  const LayoutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit,LayoutStates>(
        listener: (context, state) {},
        builder: (context, state) {
         var cubit = LayoutCubit.get(context);
          return  Scaffold(
            appBar: AppBar(),
            body: cubit.Screens[cubit.currentIndex],
            bottomNavigationBar:BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              backgroundColor: Colors.white,
              unselectedItemColor: Colors.black,
              selectedItemColor: primaryColor,
              onTap: (index){
                cubit.changeBottomNav(index);
              },
              items:const [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('lib/images/home.png')
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('lib/images/shop.png')
                  ),
                  label: 'Shope',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('lib/images/bag.png')
                  ),
                  label: 'Bag',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('lib/images/favorites.png')
                  ),
                  label: 'Favorites',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('lib/images/profile.png')
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
