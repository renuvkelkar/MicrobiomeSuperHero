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
        physics: NeverScrollableScrollPhysics(),

        itemCount: widget.health.health_benefits!.length,
        itemBuilder: (context,index){
          return Row(
            children: [
              Image.network(widget.health.footer_img.toString(),height: 20,width: 20,fit: BoxFit.cover,),
              10.widthBox,
           //   Icon(Icons.check_box,color: Colors.grey.shade500),
              Expanded(child: Text(widget.health.health_benefits![index].toString()).text.xl.make(),)

            ],
          ).p8();
        });
  }

}
