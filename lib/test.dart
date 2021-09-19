import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'model/cityModel.dart';
class Test extends StatefulWidget {


  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final ref = FirebaseFirestore.instance.collection("test");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: StreamBuilder(
          stream: ref.snapshots(),
          builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){
            if(snapshot.hasData){
              return Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context,index){
                      List<TestModel> testlist = snapshot.data!.docs
                          .map((e) => TestModel.fromJson(e.data()as Map<String, dynamic>))
                          .toList();


                      return Container(

                        decoration: BoxDecoration(
                            color: Colors.green,
                            // color: Color(int.parse(snapshot.data!.docs[index]['cat_color'])),
                            borderRadius: BorderRadius.circular(50)
                        ),

                        child: Text(testlist[index].name.toString()).text.xl2.bold.white.makeCentered(),

                      ).p8();
                      // return Center(
                      //   child: Card(
                      //     child: Container(
                      //
                      //       child: Stack(
                      //         children: [
                      //
                      //           Image.network(categoryList[index]["cat_img"],height:context.screenHeight*0.23,width:context.screenWidth*0.45,fit: BoxFit.cover,),
                      //           VxBox(
                      //             child: Text(categoryList[index]["cat_name"]).text.xl2.white.makeCentered()
                      //           ).height(context.screenHeight*0.06).width(context.screenWidth*0.45).color(Colors.green.withOpacity(0.9)).make(),
                      //
                      //
                      //
                      //         ],
                      //       ),
                      //     ).p4(),
                      //   ),
                      // );
                    }),
              );
            }
            else{
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
