import 'package:aahaarkarnti_chart_app/model/FlashCard/FlashCardModel.dart';
import 'package:flutter/material.dart';
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

            return Text(widget.facts.intresting_facts![index].toString()

            );

          });
  }
}
