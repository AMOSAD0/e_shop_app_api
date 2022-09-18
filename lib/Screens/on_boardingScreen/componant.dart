import 'package:flutter/material.dart';

Widget buildItemPageView(image,title,body){
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Image(image: AssetImage(image))),
        SizedBox(
          height: 70.0,
        ),
        Text(title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
        Text(body,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15.0,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
      ],
    ),
  );
}
class ItemPageView{
  var image;
  var title;
  var body;
  ItemPageView(this.image,this.title,this.body);
}

ItemPageView onBoarding_1=ItemPageView(
    'lib/images/on_boarding_1.jpg',
    'Title 1',
    'Body 1'
);
ItemPageView onBoarding_2=ItemPageView(
    'lib/images/on_boarding_2.jpg',
    'Title 2',
    'Body 2'
);
ItemPageView onBoarding_3=ItemPageView(
    'lib/images/on_boarding_3.jpg',
    'Title 3',
    'Body 3'
);