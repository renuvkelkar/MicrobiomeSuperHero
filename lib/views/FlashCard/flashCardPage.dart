import 'package:aahaarkarnti_chart_app/model/FlashCard/FlashCardModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class FlashCardPage extends StatefulWidget {
 final
 String  categoryList;
 String catColor;

   FlashCardPage(this.categoryList,this.catColor) ;



  @override

  _FlashCardPageState createState() => _FlashCardPageState();
}

class _FlashCardPageState extends State<FlashCardPage> {
  final flashRef = FirebaseFirestore.instance.collection("FlashCard");
  var backColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse(widget.catColor)),
      appBar: AppBar(
        backgroundColor: Color(int.parse(widget.catColor)),
        elevation: 0,
        centerTitle: true,
        title: Text(widget.categoryList.toString()),
      ),
      body: StreamBuilder(
          stream: flashRef.where('cat_name',isEqualTo:widget.categoryList).snapshots(),
          builder: (context,AsyncSnapshot<QuerySnapshot>snapshot){
            if(snapshot.hasData){
              return

                VxSwiper.builder(
                  itemCount: snapshot.data!.docs.length,
                  viewportFraction: 0.98,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayCurve: Curves.easeInToLinear,
                  enlargeCenterPage: true,
                  autoPlayInterval: Duration(seconds: 8),
                  pauseAutoPlayOnTouch: Duration(seconds: 3),
                  height: context.screenHeight*0.85,
                  itemBuilder: (context, index) {

                    List<FlashModel> FlashCardList = snapshot.data!.docs
                                .map((e) => FlashModel.fromJson(e.data()as Map<String, dynamic>))
                                .toList();
                   // backColor = Color(int.parse(snapshot.data!.docs[index]['cat_color']));
                    return
                      FlipCard(
                        flipOnTouch: true,
                        front: VxBox(
                            child: Stack(
                              children: [


                                Column(
                                  children: [
                                    Image.network(FlashCardList[index].f_img_front.toString(),height: context.percentHeight*30,width: context.percentWidth*44,fit:BoxFit.fill,),
                                    Text(FlashCardList[index].f_name.toString()).text.xl4.bold.makeCentered(),
                                    Text(FlashCardList[index].f_desc.toString()).text.xl.gray500.makeCentered().p4(),

                                    10.heightBox,
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                        child: Column(
                                          children: [
                                            Image.network("https://cdn-icons-png.flaticon.com/512/477/477373.png",height: 45,width: 45,fit: BoxFit.cover,),
                                            3.heightBox,
                                            Text("Vitamins").text.gray500.bold.make(),
                                            2.heightBox,
                                            Text(FlashCardList[index].vitamin.toString()).text.xl.bold.make(),
                                          ],
                                        ),
                                      ),


                                        Container(
                                          child: Column(
                                            children: [

                                              Image.network("https://cdn-icons-png.flaticon.com/512/3082/3082050.png",height: 45,width: 45,fit: BoxFit.cover,),
                                              3.heightBox,
                                              Text("Fibre Count").text.gray500.bold.make(),
                                              2.heightBox,
                                              Text(FlashCardList[index].fibre_count.toString()).text.xl.bold.make(),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Image.network("https://cdn-icons-png.flaticon.com/128/2738/2738728.png",height: 45,width: 45,fit: BoxFit.cover,),
                                              3.heightBox,
                                              Text("Calories").text.gray500.bold.make(),
                                              2.heightBox,
                                              Text(FlashCardList[index].calories.toString()).text.xl.bold.make(),
                                            ],
                                          ),
                                        ),

                                      ],
                                    ).p8(),
                                    5.heightBox,


                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        Container(
                                          child: Column(
                                            children: [
                                              Image.network("https://cdn-icons-png.flaticon.com/512/983/983039.png",height: 45,width: 45,fit: BoxFit.cover,),
                                              3.heightBox,
                                              Text("Taste").text.gray500.bold.make(),
                                              2.heightBox,
                                              Text(FlashCardList[index].taste.toString()).text.xl.bold.make(),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Image.network("https://cdn-icons-png.flaticon.com/512/1656/1656157.png",height: 45,width: 45,fit: BoxFit.cover,),
                                              3.heightBox,
                                              Text("Protein Count").text.gray500.bold.make(),
                                              2.heightBox,
                                              Text(FlashCardList[index].protein_count.toString()).text.xl.bold.make(),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Image.network("https://cdn-icons-png.flaticon.com/512/3703/3703380.png",height: 45,width: 45,fit: BoxFit.cover,),
                                              3.heightBox,
                                              Text("Fats").text.gray500.bold.make(),
                                              2.heightBox,
                                              Text(FlashCardList[index].fats.toString()).text.xl.bold.make(),
                                            ],
                                          ),
                                        ),



                                      ],
                                    ).p8(),
                                    //Text(FlashCardList[index].f_desc.toString()).text.xl.makeCentered().p4(),


                                  ],
                                ).p8().scrollVertical(),


                              ],
                            )
                        ).height(context.screenHeight).width(context.screenWidth*0.9,).roundedSM.white.shadowLg.make(),
                        back:  VxBox(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            20.heightBox,
                            Image.network(FlashCardList[index].f_img_back.toString(),height: context.screenHeight*0.3,width: context.screenWidth,fit: BoxFit.cover,),

                            10.heightBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: Color(int.parse(widget.catColor)),
                                  child: Text("Health Benefits").text.xl2.semiBold.white.makeCentered().p4(),
                                ),
                                VxBox(
                                  child: ListView.builder(
                                    shrinkWrap: true,

                                      itemCount: FlashCardList[index].health_benefits?.length,
                                      itemBuilder: (context,index){


                                        return Row(
                                          children: [
                                            Icon(Icons.check_circle,color: Color(int.parse(widget.catColor))),
                                            3.widthBox,
                                            Text(FlashCardList[0].health_benefits![index].toString()).text.xl.semiBold.gray500.make().py8(),
                                          ],
                                        );
                                      })
                                ).make().p4(),
                                Container(
                                  color: Color(int.parse(widget.catColor)),
                                  child: Text("Interesting Facts").text.xl2.semiBold.white.makeCentered().p4(),
                                ),
                                VxBox(
                                    child: ListView.builder(
                                        shrinkWrap: true,

                                        itemCount: FlashCardList[index].intresting_facts?.length,
                                        itemBuilder: (context,index){

                                          return Row(
                                            children: [
                                              Icon(Icons.check_circle,color: Color(int.parse(widget.catColor))),
                                              3.widthBox,
                                              Text(FlashCardList[0].intresting_facts![index].toString()).text.xl.semiBold.gray500.make().py8(),
                                            ],
                                          );
                                        })
                                ).make().p4(),
                                Align(
                                  alignment: Alignment.centerRight,
                                    child: Image.network(FlashCardList[index].footer_img.toString(),height: 60,width: 60,fit: BoxFit.cover,))
                              ],
                            ).p8()







                          ],
                        ).scrollVertical()

                        ).height(context.screenHeight).width(context.screenWidth*0.9).roundedSM.white.shadowLg.make().p4(),

                      );
                    //   VxBox(
                    //   child: Stack(
                    //     children: [
                    //
                    //       Card(
                    //           child: Image.network(FlashCardList[index].f_img_front.toString(),height: 300,width:context.screenWidth,fit: BoxFit.cover,)
                    //       ).rotate(-2.0).pOnly(top: 45,bottom: 20),
                    //       //Icon(Icons.favorite,size:40,color: Colors.red,).pOnly(top:2,left: 280).rotate(25.0),
                    //       Icon(Icons.favorite,size:30,color: Colors.red,).pOnly(top:10,).rotate(-25.0),
                    //       VxBox().yellow100.shadowXl.p8.make().capsule().h(40).w(100).opacity50().rotate(25.0).pOnly(top:10,left: 280),
                    //       VxBox().yellow100.shadowSm.p8.make().capsule().h(40).w(120).opacity50().rotate(25.0).pOnly(top: 318),
                    //      // Text(snapshot.data.documents[index].data['photoTitle']).text.xl5.fontFamily('GreatVibes').make().pOnly(left: 50,top: 0),
                    //
                    //       //Text(snapshot.data.documents[index].data['photoMemory'],).text.xl4.fontFamily('GreatVibes').make().box.yellow100.p8.make().rotate0().pOnly(top: 360).rotate(-3.0),
                    //     ],
                    //   ).scrollVertical(),
                    // ).white.shadowSm.p16.make().p16();
                  },
                ).py4();
            }
            else{
              return CircularProgressIndicator();
            }
          }),
      );

  }
}
