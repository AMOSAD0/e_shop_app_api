import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'componant.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override

  Widget build(BuildContext context) {
    PageController controller=PageController();
    List <ItemPageView>list=[
      onBoarding_1,
      onBoarding_2,
      onBoarding_3,
    ];
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(onPressed: (){}, child:Text('Skip',style: TextStyle(color: Colors.white),))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 650.0,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return buildItemPageView(list[index].image,
                    list[index].title,
                    list[index].body);
              },
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: list.length,
                ),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    controller.nextPage(duration: Duration(milliseconds: 750),
                        curve: Curves.bounceIn);
                  });
                },
                child: Icon(Icons.arrow_forward_ios),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

