import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BannerList extends StatelessWidget {

  @override
  final ref = FirebaseFirestore.instance.collection("Banner");
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade300,

      width: context.screenWidth,
      child: StreamBuilder(
        stream: ref.snapshots(),
        builder: (context,AsyncSnapshot<QuerySnapshot>snapshot){
          var bannerList = snapshot.data!.docs;
          if(snapshot.hasData){
            return VxSwiper.builder(
                itemCount: snapshot.data!.docs.length,
                scrollDirection: Axis.horizontal,
                aspectRatio: 16/9,
                enableInfiniteScroll: true,
                initialPage: 0,
                viewportFraction: 1.0,
                reverse: false,
                enlargeCenterPage: true,
                isFastScrollingEnabled: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInCubic,
                itemBuilder: (context, index) {
                  return Container(
                    width: context.screenWidth*0.98,
                    height: context.screenHeight*0.5,

                    child: Image.network(snapshot.data!.docs[index]['banner_img'],fit: BoxFit.cover,),
                  );
                }).p4();
          }
          else{
            return CircularProgressIndicator();
          }

      },
      ),
    );
  }
}