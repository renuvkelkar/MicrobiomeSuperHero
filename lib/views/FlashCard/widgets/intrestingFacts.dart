import 'package:aahaarkarnti_chart_app/model/FlashCard/FlashCardModel.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class IntrestingfactsPage extends StatefulWidget {
  final FlashModel facts;

   IntrestingfactsPage( { required this.facts}) ;




  @override
  _IntrestingfactsPageState createState() => _IntrestingfactsPageState();
}

class _IntrestingfactsPageState extends State<IntrestingfactsPage> {
  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,

          itemCount: widget.facts.intresting_facts!.length,
          itemBuilder: (context,index){

            return Row(
              children: [
                Image.network(widget.facts.footer_img.toString(),height: 20,width: 20,fit: BoxFit.cover,),
                10.widthBox,
                // Icon(Icons.check_box,color: Colors.grey.shade500),
                Text(widget.facts.intresting_facts![index].toString()

                ).text.xl.make(),
              ],
            ).p8();

          });
  }
}
