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

Widget BuildBlocItem({
  @required String ? label,
  @required String ? desc,
  @required Function ()?function,
  context
}){
  return Container(
    height: 357.0,
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label!,
              style:Theme.of(context).textTheme.bodyLarge,
            ),
            TextButton(
                child: Text('View all',
                  style: Theme.of(context).textTheme.button,
                ),
                 onPressed:function!,
            ),
          ],
        ),
        Text(desc!,
        style: Theme.of(context).textTheme.displaySmall,
        ),
        SizedBox(
          height: 20.0,
        ),
        BuildProudctCard(),
      ],
    ),
  );
}

Widget BuildProudctCard(){
  return Container(
    height: 265.0,
    width: double.infinity,
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
            width: 150,
            height: 265,
            child:Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 184.0,
                      width: 148.0,
                      color: Colors.cyan,
                      child: Text('image'),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star,
                          color: Colors.yellow,
                          size: 20.0,
                        ),
                      ],
                    ),
                    Text('type',
                      style:Theme.of(context).textTheme.displaySmall,
                    ),
                    Text('name',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text('15\$',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 14.0,
                      ),
                    )
                  ],
                ),
                Positioned(
                    top: 164.0,
                    right: 0.0,
                    child:Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            spreadRadius: 3,
                            blurRadius: 18,
                          )
                        ],
                      ),
                      child: CircleAvatar(
                        child: ImageIcon(AssetImage('lib/images/favorites.png'),color: Colors.black),
                        backgroundColor: Colors.white,
                        radius: 18.0,
                      ),
                    )
                ),
              ],
            ) ,
        ),
        separatorBuilder: (context, index) => SizedBox(width: 18.0), itemCount:5),
  );
}