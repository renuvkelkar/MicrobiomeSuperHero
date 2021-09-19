import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";

import '../../styleguide.dart';
class Header extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight*0.08,
      width: context.screenWidth,

      child: Center(
        child: RichText(
          text: TextSpan(

            children: [
              TextSpan(text: "Aahaar ", style: AppTheme.heading1),

              TextSpan(text: "Chart", style: AppTheme.heading1),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.red.shade600,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(100),bottomLeft: Radius.circular(100),topLeft:Radius.circular(0),topRight: Radius.circular(0), ),
      ),
    );
  }
}
