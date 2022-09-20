import 'package:e_shop_app/components.dart';
import 'package:flutter/material.dart';

 class HomeScreen extends StatelessWidget {
   const HomeScreen({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body:Padding(
         padding: const EdgeInsets.all(8.0),
         child: ListView(
             children: [
               Column(
                 children: [
                   BuildBlocItem(
                     context: context,
                     label: 'Sale',
                     desc: 'Super summer sale',
                     function: () {},
                   ),
                   BuildBlocItem(
                     context: context,
                     label: 'Sale',
                     desc: 'Super summer sale',
                     function: () {},
                   ),
                   BuildBlocItem(
                     context: context,
                     label: 'Sale',
                     desc: 'Super summer sale',
                     function: () {},
                   ),
                 ],
               ),
             ],
         ),
       ),
     );
   }
 }
