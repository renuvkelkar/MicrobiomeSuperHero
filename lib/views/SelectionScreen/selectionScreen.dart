import 'package:aahaarkarnti_chart_app/food/view/food_page.dart';
import 'package:aahaarkarnti_chart_app/views/DashBoard/DashBoard.dart';
import 'package:aahaarkarnti_chart_app/views/Game/game.dart';
import 'package:aahaarkarnti_chart_app/views/Quiz/quiz_play.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Drawer/MobileDrawer.dart';
import 'Drawer/WebDrawer.dart';

class SelectionScreen extends StatefulWidget {
  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
   bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aahaar Buddy"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: context.isMobile?MobileDrawer():WebDrawer()
      ),


      body: Stack(
        children: [
          Container(
            child: Image.network(
              "https://image.freepik.com/free-vector/empty-sky-nature-scene-park_1308-50041.jpg",
              height: context.screenHeight,
              width: context.screenWidth,
              fit: context.isMobile?BoxFit.cover:BoxFit.fill,
            ),
          ),
          // Lottie.network(
          //     'https://assets7.lottiefiles.com/packages/lf20_zkhpkpyc.json',
          //     height: 400,
          //     width: 1200),
          context.isMobile?
          Column(
            children: [
              InkWell(
                onTap: () {
                  // Timer(Duration(seconds: 5), () {
                  //   // 5 seconds over, navigate to Page2.
                  //   Navigator.push(context, MaterialPageRoute(builder: (_) => Screen2()));
                  // });

                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => DashBoard()));
                },
                child: Container(
                  height: context.screenHeight * 0.10,
                  width: context.screenWidth * 0.7,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("Info Cards").text.xl2.bold.white.makeCentered(),
                ).p8(),
              ),
              15.heightBox,
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => GamePage()));
                },
                child: Container(
                  height: context.screenHeight * 0.10,
                  width: context.screenWidth * 0.7,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("Puzzle").text.xl2.bold.white.makeCentered(),
                ).p8(),
              ),

              15.heightBox,
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => QuizPlay()));
                },
                child: Container(
                  height: context.screenHeight * 0.10,
                  width: context.screenWidth * 0.7,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("Quiz").text.xl2.bold.white.makeCentered(),
                ).p8(),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => FoodPage(),));
                },
                child: Container(
                  height: context.screenHeight * 0.10,
                  width: context.screenWidth * 0.7,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("Aahaar Plate").text.xl2.bold.white.makeCentered(),
                ).p8(),
              ),

            ],
          ).py(100).px(50):
          Wrap(
            direction: Axis.horizontal,
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              InkWell(
                onTap: () {
                  // Timer(Duration(seconds: 5), () {
                  //   // 5 seconds over, navigate to Page2.
                  //   Navigator.push(context, MaterialPageRoute(builder: (_) => Screen2()));
                  // });

                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => DashBoard()));
                },
                child: Container(
                  height: context.screenHeight * 0.2,
                  width: context.screenWidth * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("Info Cards").text.xl2.bold.white.makeCentered(),
                ).p8(),
              ),
              15.heightBox,
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => GamePage()));
                },
                child: Container(
                  height: context.screenHeight * 0.2,
                  width: context.screenWidth * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("Puzzle").text.xl2.bold.white.makeCentered(),
                ).p8(),
              ),
              15.heightBox,
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => QuizPlay()));
                },
                child: Container(
                  height: context.screenHeight * 0.2,
                  width: context.screenWidth * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("Quiz").text.xl2.bold.white.makeCentered(),
                ).p8(),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => FoodPage()));
                },
                child: Container(
                  height: context.screenHeight * 0.2,
                  width: context.screenWidth * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("Aahaar Plate").text.xl2.bold.white.makeCentered(),
                ).p8(),
              ),

            ],
          ).py(200).px(50),
          context.isMobile?Positioned(
            bottom: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Lottie.network(
                    'https://assets7.lottiefiles.com/private_files/lf30_cdui7M.json',
                    height: 120,
                    width: 100,
                    fit: BoxFit.cover),
                Lottie.network(
                    'https://assets6.lottiefiles.com/packages/lf20_nz20vA.json',
                    height: 140,
                    width: 100,
                    fit: BoxFit.cover),
                Lottie.network(
                    'https://assets9.lottiefiles.com/packages/lf20_0wtvp7yg.json',
                    height: 100,
                    width: 150,
                    fit: BoxFit.cover)
              ],
            ),
          ):
          Positioned(
            bottom: 0,left:400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(
                    'https://assets7.lottiefiles.com/private_files/lf30_cdui7M.json',
                    height: 200,
                    width: 180,
                    fit: BoxFit.cover),
                Lottie.network(
                    'https://assets6.lottiefiles.com/packages/lf20_nz20vA.json',
                    height: 200,
                    width: 180,
                    fit: BoxFit.cover),
                Lottie.network(
                    'https://assets9.lottiefiles.com/packages/lf20_0wtvp7yg.json',
                    height: 200,
                    width: 180,
                    fit: BoxFit.cover)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
