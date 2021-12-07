import 'package:aahaarkarnti_chart_app/model/category_model.dart';
import 'package:aahaarkarnti_chart_app/views/Common/Header.dart';
import 'package:aahaarkarnti_chart_app/views/DashBoard/DashBoardSlider.dart';
import 'package:aahaarkarnti_chart_app/views/FlashCard/flashCardPage.dart';
import 'package:aahaarkarnti_chart_app/views/SelectionScreen/selectionScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class DashBoard extends StatefulWidget {



  @override

  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  final CatRef = FirebaseFirestore.instance.collection("Category");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aahaar Chart"),
        centerTitle: true,
        backgroundColor: Colors.red.shade600,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SelectionScreen()));
          }, icon: Icon(Icons.home))
        ],


      ),
       body: SingleChildScrollView(
         child: VxBox(


           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Container(color: Colors.red,
                   child: BannerList().pOnly(bottom: 8)),
             // VxBox().height(5).red500.makeCentered(),
               Center(
                 child: StreamBuilder(
                     stream: CatRef.snapshots(),
                     builder: (context,AsyncSnapshot<QuerySnapshot>snapshot){
                       if(snapshot.hasData){
                         return Container(
                           width: context.isMobile?context.screenWidth:context.screenWidth*0.5,
                           child: ListView.builder(

                               shrinkWrap: true,
                               physics: NeverScrollableScrollPhysics(),
                               itemCount: snapshot.data!.docs.length,
                               itemBuilder: (context,index){
                                 List<CatModel> categoryList = snapshot.data!.docs
                                     .map((e) => CatModel.fromJson(e.data()as Map<String, dynamic>))
                                     .toList();

                                 // var categoryList = snapshot.data!.docs;
                                 return InkWell(
                                   onTap: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (_)=>FlashCardPage(
                                         categoryList[index].cat_name.toString(),categoryList[index].cat_color.toString()

                                     )));
                                   },
                                   child: Container(
                                     height:context.isMobile? context.screenHeight*0.10:context.screenHeight*0.10,
                                     width: context.isMobile?context.screenWidth*0.7:context.screenWidth*0.3,
                                     decoration: BoxDecoration(
                                       color: Color(int.parse(snapshot.data!.docs[index]['cat_color'])),
                                       borderRadius: BorderRadius.circular(50)
                                     ),

                                     child: Text(categoryList[index].cat_name.toString()).text.xl2.bold.white.makeCentered(),

                                   ).p16(),
                                 );

                               }),
                         );
                       }
                       else{
                         return CircularProgressIndicator();
                       }
                     }),
               ),



             ],
           ),
         ).width(context.isMobile?context.screenWidth:context.screenWidth*0.6).white.shadowXs.makeCentered(),
       ),
    );
  }
}
