import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DemoSplashScreen extends StatefulWidget {


  @override
  _DemoSplashScreenState createState() => _DemoSplashScreenState();
}

class _DemoSplashScreenState extends State<DemoSplashScreen> {
  @override
  final ref = FirebaseFirestore.instance.collection("Category");
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chart App"),
      ),
      body: StreamBuilder(
          stream: ref.snapshots(),
          builder: (context,AsyncSnapshot<QuerySnapshot>snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context,index){
                    return
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              children: [

                                Image.network(snapshot.data!.docs[index]['cat_img']),
                                Text(snapshot.data!.docs[index]['cat_name'],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                SizedBox(height: 20,),

                              ],
                            ),
                          ),
                        ),
                      );
                  });
            }
            else{
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
