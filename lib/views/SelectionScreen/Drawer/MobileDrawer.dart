import 'package:aahaarkarnti_chart_app/views/SelectionScreen/Drawer/techPowerGirls.dart';
import 'package:aahaarkarnti_chart_app/views/SelectionScreen/Drawer/websitePage.dart';
import 'package:aahaarkarnti_chart_app/views/SelectionScreen/selectionScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:ui';

import 'DisclaimerPage.dart';


class MobileDrawer extends StatelessWidget {
  @override
  _launchURLApp() async {
    const url = 'https://gistusa.org/aahaarkranti/';
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURLApp1() async {
    const url = 'https://techpowergirls.net/';
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.redAccent

              ),
              child: Container(child:
              Center(
                child: Row(
                  children: [
                    Image.asset('assets/Images/logo.png', height: 100, width: 100, fit: BoxFit.fitHeight),
                    // Icon(Icons.face_outlined,color: Colors.white,),
                    15.widthBox,
                    Wrap(children: [Text('Aahaar \n Buddy', style: TextStyle(fontSize: 32, color: Colors.white),)]),
                  ],
                ),
              ))),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left:10, right: 10),
              child: InkWell(
                splashColor: Colors.yellow,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
             builder: (_) => Privacy()));
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      border:Border(bottom: BorderSide(color: Colors.grey ))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.network("https://cdn-icons-png.flaticon.com/512/1150/1150626.png",height: 50,width: 50,fit: BoxFit.cover,),
                          //Icon(Icons.web,color: Colors.redAccent),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Text('Aahaar Kranti', style: TextStyle(fontSize: 15),),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_right,color: Colors.redAccent),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // ListTile(
          //   title: Padding(
          //     padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
          //     child: InkWell(
          //       splashColor: Colors.yellow,
          //       onTap: () async{
          //
          //         const url = 'https://www.youtube.com/channel/UCvImGmSBnube751qwRhWk1A';
          //         if (await canLaunch(url)) {
          //           await launch(url, forceSafariVC: true, forceWebView: true);
          //         } else {
          //           throw 'Could not launch $url';
          //         }
          //       },
          //       child: Container(
          //         height: 40,
          //         decoration: BoxDecoration(
          //             border:Border(bottom: BorderSide(color: Colors.grey ))
          //         ),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Row(
          //               children: [
          //                 Icon(Icons.notifications,color: Colors.green),
          //                 Padding(
          //                   padding: const EdgeInsets.all(8.0),
          //                   child: Text('Aahaar Kranti YouTube ', style: TextStyle(fontSize: 15),),
          //                 ),
          //               ],
          //             ),
          //             Icon(Icons.arrow_right,color: Colors.green),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // ListTile(
          //   title: Padding(
          //     padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
          //     child: InkWell(
          //       splashColor: Colors.yellow,
          //       onTap: (){
          //         Navigator.push(context, MaterialPageRoute(builder: (_) => SelectionScreen()));
          //       },
          //       child: Container(
          //         height: 60,
          //         decoration: BoxDecoration(
          //             border:Border(bottom: BorderSide(color: Colors.grey ))
          //         ),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Row(
          //               children: [
          //                 Image.network("https://cdn-icons-png.flaticon.com/512/6207/6207649.png",height: 50,width: 50,fit: BoxFit.cover,),
          //                 // Icon(Icons.settings,color:Colors.redAccent),
          //                 Padding(
          //                   padding: const EdgeInsets.all(10.0),
          //                   child: Text('Privacy Page', style: TextStyle(fontSize: 15),),
          //                 ),
          //               ],
          //             ),
          //             Icon(Icons.arrow_right,color: Colors.redAccent),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
              child: InkWell(
                splashColor: Colors.yellow,

                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Disclaimer()));
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      border:Border(bottom: BorderSide(color: Colors.grey ))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.network("https://cdn-icons-png.flaticon.com/512/2621/2621796.png",height: 50,width: 50,fit: BoxFit.cover,),
                          // Icon(Icons.business_center_rounded,color: Colors.redAccent),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Disclaimer Page', style: TextStyle(fontSize: 15),),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_right,color: Colors.redAccent),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
              child: InkWell(
                splashColor: Colors.yellow,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (_) => TechPowerGirls()));

                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      border:Border(bottom: BorderSide(color: Colors.grey ))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.network("https://cdn-icons-png.flaticon.com/512/6036/6036806.png",height: 50,width: 50,fit: BoxFit.cover,),
                          // Icon(Icons.logout,color: Colors.redAccent),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('About Developer', style: TextStyle(fontSize: 15),),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_right,color: Colors.redAccent),
                    ],
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
//ListTile(
//           title: const Text('Item 1'),
//           onTap: () {
//             Navigator.push(context, MaterialPageRoute(
//               builder: (_) => Privacy(),
//             ));
//             // Update the state of the app.
//             // ...
//           },
//         ),
