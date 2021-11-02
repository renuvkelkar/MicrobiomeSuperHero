import 'package:aahaarkarnti_chart_app/model/FlashCard/FlashCardModel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class RecipeWiget extends StatefulWidget {
  final FlashModel recipe;
  RecipeWiget( { required this.recipe}) ;


  @override
  _RecipeWigetState createState() => _RecipeWigetState();
}

class _RecipeWigetState extends State<RecipeWiget> {
  _launchURLApp() async {
    const url = 'https://flutterdevs.com/';
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,

        itemCount: widget.recipe.recipe!.length,
        itemBuilder: (context,index){
          return Column(
            children: [
              InkWell(
                onTap: ()async{
                  var url = widget.recipe.recipe![index].toString() ;
                  if (await canLaunch(url)) {
                  await launch(url, forceSafariVC: true, forceWebView: true);
                  } else {
                  throw 'Could not launch $url';
                  }
                  // _launchURLApp();

                },
                  child: Row(
                    children: [
                      Image.network(widget.recipe.f_img_front.toString(),height: 20,width: 20,),
                      Text("Recipe link")
                    ],
                  )),

            ],
          );
        });
  }
}
