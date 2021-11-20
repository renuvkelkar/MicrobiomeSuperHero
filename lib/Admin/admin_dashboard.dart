import 'package:aahaarkarnti_chart_app/Admin/quizData.dart';
import 'package:flutter/material.dart';

import 'AddData.dart';
import 'gameData.dart';
class DashBoard extends StatefulWidget {


  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Dasboard"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 300,
                color: Colors.red,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (_)=>AddData()));
                  },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text('FlashCard')),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 300,
                color: Colors.red,
                child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (_)=>GameData()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text('Game')),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 300,
                color: Colors.red,
                child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (_)=>QuizData()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text('quiz')),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
