import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BannerList extends StatelessWidget {
  @override
  initState() {

  }

  @override
  final ref = FirebaseFirestore.instance.collection("Banner");
  Widget build(BuildContext context) {
    return Container(
      width: context.isMobile?context.screenWidth:context.screenWidth*0.5,
      height:context.isMobile? context.screenHeight*0.3:context.screenHeight*0.5,


      child: StreamBuilder(
        stream: ref.snapshots(),
        builder: (context,AsyncSnapshot<QuerySnapshot>snapshot){
          var bannerList = snapshot.data?.docs;
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
                    width: context.isMobile?context.screenWidth:context.screenWidth*0.50,
                    height:context.isMobile? context.screenHeight*0.5:context.screenHeight*0.6,

                    child: Image.network(snapshot.data!.docs[index]['banner_img'],fit: BoxFit.cover,),
                  ).pOnly(top: 10);
                });
          }
          else{
            return CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            );
          }

      },
      ),
    );
  }
}