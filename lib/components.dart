import 'package:e_shop_app/constans.dart';
import 'package:flutter/material.dart';

Widget BuildTextField({@required String ?label,@required TextEditingController? controller,@required String?Function(String?) ?validator,
}){
  return Container(
    height: 79.0,
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

        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          label: Text(label!,style: TextStyle(fontSize: 14.0,)),
          enabledBorder: InputBorder.none,

        ),
      ),
    ),
  );
}

Widget BuildButton({@required String ? label,
  @required Function() ?function,
}){
  return InkWell(
  onTap: function!,
    child: Container(
      height: 48.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color:primaryColor,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Center(child: Text(label!)),
    ),
  );
}

Widget BuildIconButton({@required String ? img}){
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