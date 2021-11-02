import 'dart:async';

import 'package:aahaarkarnti_chart_app/views/DashBoard/DashBoard.dart';
import 'package:aahaarkarnti_chart_app/views/IntroSlider/inroSlider.dart';
import 'package:aahaarkarnti_chart_app/views/IntroSlider/introslider_web.dart';
import 'package:aahaarkarnti_chart_app/views/SelectionScreen/selectionScreen.dart';
import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";

import '../../styleguide.dart';





class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {


  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => context.isMobile?IntroScreen():IntroScreenWeb(),
      ));
    });
  }
  Widget build(BuildContext context) {


    return MaterialApp(

      home: SafeArea(
        child: Scaffold(
          body: ListView(
            children: <Widget>[
              Center(
                child: Column
                  (mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: context.screenHeight*0.2,
                      width: context.screenWidth,

                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(text: "Aahaar ", style: AppTheme.heading),

                                TextSpan(text: "Chart", style: AppTheme.heading),
                              ],
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red.shade600,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(100),bottomLeft: Radius.circular(100),topLeft:Radius.circular(0),topRight: Radius.circular(0), ),
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(height: 10,),


              Container(
                alignment: Alignment.bottomCenter,

                child: Image.network("https://image.freepik.com/free-vector/vitamin-food-infographic_23-2148490790.jpg", fit: BoxFit.cover,),

                ),

            ],
          ),
        ),
      ),
    );
  }
}
