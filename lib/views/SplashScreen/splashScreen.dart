import 'dart:async';

import 'package:aahaarkarnti_chart_app/views/DashBoard/DashBoard.dart';
import 'package:aahaarkarnti_chart_app/views/IntroSlider/inroSlider.dart';
import 'package:aahaarkarnti_chart_app/views/IntroSlider/introslider_web.dart';
import 'package:aahaarkarnti_chart_app/views/SelectionScreen/selectionScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";

import '../../styleguide.dart';





class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>with SingleTickerProviderStateMixin  {
  late AnimationController _controller;

  //
  // @override
  // void dispose() {
  //   super.dispose();
  //   _controller.dispose();
  // }


  @override
  void initState(){
    super.initState();
    _controller =
    AnimationController(duration: Duration(seconds: 30), vsync: this)
      ..repeat();
    Timer(Duration(seconds: 10), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => context.isMobile?IntroScreen():IntroScreenWeb(),
      ));
    });
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
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

                                TextSpan(text: "Buddy", style: AppTheme.heading),
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


             context.isMobile? Container(
                alignment: Alignment.center,

                child: Column(
                  children: [
                    Stack(
                      children: [
                        RotationTransition(
                            alignment: Alignment.center,
                            turns: _controller,
                            child: Image.asset("assets/Images/back.png",height: context.isMobile?context.screenHeight*0.50:context.screenHeight*0.75, fit: BoxFit.cover,)),
                        Positioned(
                          left: 122,
                          top: 122,
                          child: CircleAvatar(
                            radius:72,
                            backgroundImage: AssetImage('assets/Images/logo.png'),
                            // child: Image.asset("assets/Images/logo.png")
                          ),
                        )
                        // CircleAvatar(
                        //   radius: 50,
                        //   backgroundImage: AssetImage('assets/Images/logo.png'),
                        //   // child: Image.asset("assets/Images/logo.png")
                        // ).pOnly(left: 150,top: 170)
                      ],
                    ),
                    SizedBox(height: context.isMobile?120:context.screenHeight*0.2,),
                    Container(

                      child: Column(
                        children: [
                          Text("Developed by"),
                          Image.asset("assets/Images/logo_new.png",height: 60,width: 100,fit: BoxFit.contain,)
                        ],
                      ),
                    )
                  ],
                ),

              ):
             Container(
               alignment: Alignment.center,

               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                   Stack(
                     children: [
                       RotationTransition(
                           alignment: Alignment.center,
                           turns: _controller,
                           child: Image.asset("assets/Images/back.png",height: context.screenHeight*0.65, fit: BoxFit.cover,)),
                       CircleAvatar(
                         radius: 100,
                         backgroundImage: AssetImage('assets/Images/logo.png'),
                         // child: Image.asset("assets/Images/logo.png")
                       ).pOnly(left: 140,top: 140)
                     ],
                   ),
                   Container(

                     child: Column(
                       children: [
                         Text("Developed by"),
                         Image.asset("assets/Images/logo_new.png",height: 60,width: 100,fit: BoxFit.contain,)
                       ],
                     ),
                   ),

                 ],

               ),

             )


            ],
          ),
        ),
      ),
    );
  }
}
