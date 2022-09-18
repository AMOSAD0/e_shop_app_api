import 'package:flutter/material.dart';

Widget buildTextField({@required String ?label}){
  return Container(
    height: 64.0,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.6),
          spreadRadius: 3,
          blurRadius: 10,
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: TextFormField(

        decoration: InputDecoration(
          label: Text(label!,style: TextStyle(fontSize: 14.0,)),
          enabledBorder: InputBorder.none,

        ),
      ),
    ),
  );
}

Widget buildButton({@required String ? label}){
  return Container(
    height: 48.0,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.cyan,
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: Center(child: Text(label!)),
  );
}

Widget buildIconButton({@required String ? img}){
  return Container(
    height: 64.0,
    width: 92.0,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.6),
          spreadRadius: 3,
          blurRadius: 10,
        )
      ],
    ),
    child: Image(image: AssetImage(img!)),
  );
}