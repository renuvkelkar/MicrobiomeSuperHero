import 'package:aahaarkarnti_chart_app/model/FlashCard/FlashCardModel.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class HealthBenefits extends StatefulWidget {
  final FlashModel health;
  HealthBenefits( { required this.health}) ;


  @override
  _HealthBenefitsState createState() => _HealthBenefitsState();
}

class _HealthBenefitsState extends State<HealthBenefits> {
  @override

  Widget build(BuildContext context) {

    return  ListView.builder(
        shrinkWrap: true,

        itemCount: widget.health.health_benefits!.length,
        itemBuilder: (context,index){
          return Column(
            children: [
              Text(widget.health.health_benefits![index].toString()),

            ],
          );
        });
  }

}
